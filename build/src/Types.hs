module Types where

import Data.Map

import Control.Monad
import Control.Monad.State
import Control.Monad.Reader
import Control.Monad.Except
import Control.Monad.Trans
import Control.Monad.Trans.Except
import Control.Monad.IO.Class

import AbsGrammar
import PrintGrammar

import ErrM

data TType
    = TInt
    | TFloat
    | TStr
    | TBool
    | TDict (TType, TType)
    | TStruct (Map TVar TType)
    | TArray TType
    | Null
    deriving (Show, Eq, Ord)

type TVar   = Ident
type TFName = Ident
type TSName = Ident

newtype TFun = TFun (TypeChecker ())

type TEnvVar = Map TVar TType
type TEnvFunc = Map TFName ([TType], TFun, TType)
type TEnvStruct = Map TSName TType
type TEnv = (TType, TEnvVar, TEnvFunc, TEnvStruct)

type TResult = ExceptT String IO
type TypeChecker = ReaderT TEnv TResult

tGetVarType :: TVar -> TypeChecker TType
tGetVarType var = do
    (_, envVar, _, _) <- ask
    let c = Data.Map.lookup var envVar
    case c of
        Just t -> return t
        Nothing -> throwError ("Variable was not declared before: " ++ (show var))

tGetFunc :: TFName -> TypeChecker ([TType], TFun, TType)
tGetFunc fname = do
    (_, _, envFun, _) <- ask
    let c = Data.Map.lookup fname envFun
    case c of
      Just func -> return func
      Nothing -> throwError ((show fname) ++ " function does not exist")

tGetStructType :: TSName -> TypeChecker TType
tGetStructType name = do
    (_, _, _, envStruct) <- ask
    let c = Data.Map.lookup name envStruct
    case c of
      Just t -> return t
      Nothing -> throwError ("Struct " ++ (show name) ++ " was not defined.")

tSetVar :: TVar -> TType -> TypeChecker TEnv
tSetVar var t = do
    (rtype, envVar, envFunc, envStruct) <- ask
    return (rtype, insert var t envVar, envFunc, envStruct)

tSetFun :: TFName -> [TType] -> TFun -> TType -> TypeChecker TEnv
tSetFun fname types fun returnType = do
    (rt, envVar, envFun, envStruct) <- ask
    return (rt, envVar, insert fname (types, fun, returnType) envFun, envStruct)

tSetStruct :: TSName -> TType -> TypeChecker TEnv
tSetStruct name value = case value of
    TStruct v -> do
        (rType, envVar, envFun, envStruct) <- ask
        return (rType, envVar, envFun, insert name (TStruct v) envStruct)
    _ -> throwError ("tSetStruct expected struct, but got invalid value: " ++ (show value))

typeToTType :: Type -> TType
typeToTType AbsGrammar.TInt = Types.TInt
typeToTType AbsGrammar.TFloat = Types.TFloat
typeToTType AbsGrammar.TStr = Types.TStr
typeToTType AbsGrammar.TBool = Types.TBool

checkTypes :: [TType] -> [TType] -> TypeChecker ()
checkTypes [] [] = return ()
checkTypes (a:as) (b:bs) = if a == b then checkTypes as bs else throwError "no i chuj, nie pykło"

tParseVarOnly :: VarOnly -> TypeChecker (TVar,TType)
tParseVarOnly (Dec n t) = do
    let tt = typeToTType t
    return (n,tt)
tParseVarOnly (DecStruct n sname) = do
    t <- tGetStructType sname
    return (n, t)
tParseVarOnly (DecDict n key value) = do
    let tkey = typeToTType key
    let tval = typeToTType value
    return (n, (TDict (tkey, tval)))
tParseVarOnly (DecArrMul n t _) = do
    let tt = typeToTType t
    return (n, (TArray tt))

tParseVarsOnly :: [VarOnly] -> TypeChecker [(TVar,TType)]
tParseVarsOnly [] = return []
tParseVarsOnly (v:vs) = do
    t <- tParseVarOnly v
    ts <- tParseVarsOnly vs
    return $ [t] ++ ts

tParseVarExpr :: VarExpr -> TypeChecker (TVar,TType)
tParseVarExpr (DecSet name vtype _) = do
    let tt = typeToTType vtype
    return (name, tt)
tParseVarExpr (DecStructSet name sname _) = do
    v <- tGetStructType sname
    return (name, v)
tParseVarExpr (DecArrMulInit name itype length exp) = do
    let tt = typeToTType itype
    return (name, (TArray tt))

tParseVar :: Var -> TypeChecker (TVar,TType)
tParseVar (DVarExpr v) = tParseVarExpr v
tParseVar (DVarOnly v) = tParseVarOnly v

tParseVars :: [Var] -> TypeChecker [(TVar,TType)]
tParseVars [] = return $ []
tParseVars (v:vs) = do
    t <- tParseVar v
    ts <- tParseVars vs
    return $ [t] ++ ts

tVarToType :: Var -> TypeChecker TType
tVarToType (DVarOnly v) = do
    (_, t) <- tParseVarOnly v
    return t
tVarToType (DVarExpr v) = do
    (_, t) <- tParseVarExpr v
    return t

tVarsToTypes :: [Var] -> TypeChecker [TType]
tVarsToTypes [] = return $ []
tVarsToTypes (v:vs) = do
    t <- tVarToType v
    ts <- tVarsToTypes vs
    return $ [t] ++ ts

tExpToType :: Exp -> TypeChecker TType
tExpToType exp = do
    t <- tExp exp
    return t

tExpsToTypes :: [Exp] -> TypeChecker [TType]
tExpsToTypes [] = return $ []
tExpsToTypes (e:es) = do
    t <- tExpToType e
    ts <- tExpsToTypes es
    return $ [t] ++ ts

tVarOnly :: VarOnly -> TypeChecker TEnv
tVarOnly vo = case vo of
    Dec name vtype -> do
        env <- ask
        env1 <- local (const env) $ tSetVar name (typeToTType vtype)
        return env1
    DecStruct name stype -> do
        env <- ask
        v <- tGetStructType stype
        env1 <- local (const env) $ tSetVar name v
        return env1
    DecDict name ktype vtype -> do
        let kt = typeToTType ktype
        let vt = typeToTType vtype
        env <- tSetVar name (TDict (kt, vt))
        return env
    DecArrMul name itype length -> do
        env <- ask
        let ttype = typeToTType itype
        env1 <- local (const env) $ tSetVar name (TArray ttype)
        return env1

tExpsHaveType :: [Exp] -> TType -> TypeChecker ()
tExpsHaveType [] _ = return ()
tExpsHaveType (e:es) t = do
    et <- tExp e
    if et == t then (tExpsHaveType es t)
    else throwError ("Checking list of exps, invalid type: want: " ++ (show t) ++ ", got: " ++ (show et))

tCheckLen :: [Exp] -> TypeChecker TType
tCheckLen [] = throwError "Function len requires one argument."
tCheckLen (e:es) = if length es > 0 then throwError "Function len requires one argument." else do
    t <- tExp e
    case t of
      TArray _ -> return Types.TInt
      _ -> throwError "Function len requires one argument which must be an array."

tCheckParseInt :: [Exp] -> TypeChecker TType
tCheckParseInt [] = throwError "Function parse_int requires one argument."
tCheckParseInt (e:es) = do
    if length es > 0 then
        throwError "Function parse_int requires one argument"
    else do
        t <- tExp e
        case t of
          Types.TStr -> return Types.TInt
          _ -> throwError ("Function parse_int requires one arguent which must be a string")

tVarExpr :: VarExpr -> TypeChecker TEnv
tVarExpr vr = case vr of
    DecSet name vtype exp -> do
        env <- ask
        t <- tExp exp
        let expectedT = typeToTType vtype
        if t /= expectedT then throwError ("Invalid expression type for declared variable: " ++ show(name) ++ ", want: " ++ (show expectedT) ++ ", got: " ++ (show t))
        else do
            env1 <- local (const env) $ tSetVar name t
            return env1
    DecArr name itype exps -> do
        env <- ask
        let it = typeToTType itype
        tExpsHaveType exps it
        env1 <- local (const env) $ tSetVar name (TArray it)
        return env1
    DecStructSet name sname exp -> do
        env <- ask
        vt <- local (const env) $ tExp exp
        exVT <- local (const env) $ tGetStructType sname
        if vt /= exVT then throwError "Declaring struct with invalid value"
        else do
            env1 <- local (const env) $ tSetVar name vt
            return env1
    DecArrMulInit name itype _ exp -> do
        env <- ask
        let it = typeToTType itype
        expT <- tExp exp
        if it == expT then do
            env1 <- local (const env) $ tSetVar name (TArray it)
            return env1
        else throwError ("Array declaration, invalid expression type: want: " ++ (show it) ++ ", got: " ++ (show expT))

tVar :: Var -> TypeChecker TEnv
tVar v = case v of
    DVarOnly vo -> tVarOnly vo
    DVarExpr vr -> tVarExpr vr

tExp :: Exp -> TypeChecker TType
tExp (EAss name exp) = do
    t <- tExp exp
    expectedT <- tGetVarType name
    if t == expectedT then
        return Null
    else throwError ("Invalid assignment to " ++ (show name) ++ ", want: " ++ (show expectedT) ++ ", got: " ++ (show t))
tExp (EAssArr name indexExp valExp) = do
    indexType <- tExp indexExp
    valType <- tExp valExp
    arrType <- tGetVarType name
    case arrType of
      TArray aType -> if indexType /= Types.TInt then
                                    throwError ("Invalid index type: " ++ (show indexType))
                                else if valType /= aType then
                                    throwError ("Invalid value type for " ++ (show name) ++ ", want: " ++ (show aType) ++ ", got: " ++ (show valType))
                                else return Null
      TDict (kType, vType) -> if indexType /= kType then
                                                    throwError ("Assigning to " ++ (show name) ++ " - invalid key type: want: " ++ (show kType) ++ ", got: " ++ (show indexType))
                                else if valType /= vType then
                                    throwError ("Assigning to " ++ (show name) ++ " - invalid value type: want: " ++ (show vType) ++ ", got: " ++ (show valType))
                                else return Null
      _ -> throwError ("Invalid index type for " ++ (show name) ++ ", want: int, got: " ++ (show indexExp))
tExp (EAssStr name attrName value) = do
    env <- ask
    t <- tGetVarType name
    case t of
        TStruct struct -> do
            let c = Data.Map.lookup attrName struct
            case c of
              Just expectedVT -> do
                vt <- tExp value
                if vt == expectedVT then return Null
                else throwError ("Invalid type while assigning to attribute")
              Nothing -> throwError ("Struct attribute does not exist")
        _ -> throwError ("Variable " ++ (show name) ++ " is not a struct.")
tExp (EEPlus name exp) = do
    env <- ask
    t <- tGetVarType name
    valType <- tExp exp
    case t of
      Types.TInt -> case valType of
        Types.TInt -> return Null
        _ -> throwError ("Invalid value for += operation (want Int) on " ++ (show name))
      Types.TFloat -> case valType of
        Types.TFloat -> return Null
        _ -> throwError ("Invalid value for += operation (want Float) on " ++ (show name))
      _ -> throwError ("Invalid variable to execute += on.")
tExp (EEMinus name exp) = do
    env <- ask
    t <- tGetVarType name
    valType <- tExp exp
    case t of
      Types.TInt -> case valType of
        Types.TInt -> return Null
        _ -> throwError ("Invalid value for -= operation (want Int) on " ++ (show name))
      Types.TFloat -> case valType of
        Types.TFloat -> return Null
        _ -> throwError ("Invalid value for -= operation (want Float) on " ++ (show name))
      _ -> throwError ("Invalid variable to execute -= on.")
tExp (ElOr b1 b2) = do
    t1 <- tExp b1
    t2 <- tExp b2
    if t1 == Types.TBool && t2 == Types.TBool then
        return Types.TBool
    else throwError ("|| needs boolean values, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (ElAnd e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == Types.TBool && t2 == Types.TBool then
        return Types.TBool
    else throwError ("&& needs boolean values, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (EEq e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == t2 then
        return Types.TBool
    else throwError ("== needs the same types, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (ENEq e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == t2 then
        return Types.TBool
    else throwError ("!= needs the same types, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (ELt e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == t2 then
        return Types.TBool
    else throwError ("< needs the same types, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (ELtE e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == t2 then
        return Types.TBool
    else throwError ("<= needs the same types, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (ELt2 e1 e2 e3) = do
    t1 <- tExp e1
    t2 <- tExp e2
    t3 <- tExp e3
    if t1 == t2 && t2 == t3 then
        return Types.TBool
    else throwError ("a < b < c needs the same types, got: " ++ (show t1) ++ ", " ++ (show t2) ++ ", " ++ (show t3))
tExp (EGt e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == t2 then
        return Types.TBool
    else throwError ("> needs the same types, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (EGtE e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == t2 then
        return Types.TBool
    else throwError (">= needs the same types, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (EGt2 e1 e2 e3) = do
    t1 <- tExp e1
    t2 <- tExp e2
    t3 <- tExp e3
    if t1 == t2 && t2 == t3 then
        return Types.TBool
    else throwError ("a > b > c needs the same types, got: " ++ (show t1) ++ ", " ++ (show t2) ++ ", " ++ (show t3))
tExp (EAdd e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == t2 && (t1 == Types.TInt || t2 == Types.TFloat || t2 == Types.TStr) then
        return t1
    else throwError ("+ needs the valid types, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (ESub e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == t2 && (t1 == Types.TInt || t1 == Types.TFloat) then
        return t1
    else throwError ("- needs the valid types, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (EMul e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == t2 && (t1 == Types.TInt || t1 == Types.TFloat) then
        return t1
    else throwError ("* needs the valid types, got: " ++ (show t1) ++ " and " ++ (show t2))
tExp (EDiv e1 e2) = do
    t1 <- tExp e1
    t2 <- tExp e2
    if t1 == t2 && (t1 == Types.TInt || t1 == Types.TFloat) then
        return t1
    else throwError ("/ needs the valid types, got: " ++ (show t1) ++ " and " ++ (show t2))

tExp (Call fname exps) = do
    env <- ask
    if fname == (Ident "print") then
        return Null
    else
        if fname == (Ident "len") then
            tCheckLen exps
        else
            if fname == (Ident "parse_int") then
                tCheckParseInt exps
            else do
                (argTypes, _, returnType) <- local (const env) $ tGetFunc fname
                passedTypes <- tExpsToTypes exps
                if argTypes == passedTypes then do
                    return returnType
                else throwError ("Passed invalid arguments to function: " ++ (show fname))

tExp (EVarArr name index) = do
    ar <- tGetVarType name
    indexType <- tExp index
    case ar of
      TArray aType -> if indexType == Types.TInt then return aType
                      else throwError ("Accessing array " ++ (show name) ++ " with invalid index type " ++ (show indexType))
      TDict (keyType, valType) -> if indexType == keyType then return valType
                                  else throwError ("Accessing dict " ++ (show name) ++ " with invalid key type: want: " ++ (show keyType) ++ ", got: " ++ (show indexType))
      _ -> throwError ("Accessing invalid variable type: " ++ (show name))
tExp (EStrAtt name attr) = do
    t <- tGetVarType name
    case t of
      TStruct attrsMap -> do
          let c = Data.Map.lookup attr attrsMap
          case c of
            Just t -> return t
            Nothing -> throwError ("Struct variable " ++ (show name) ++ " does not have attribute: " ++ (show attr))
      _ -> throwError ("Variable " ++ (show name) ++ "is not a struct.")
tExp (EPPos name) = do
    t <- tGetVarType name
    case t of
      Types.TInt -> return Types.TInt
      Types.TFloat -> return Types.TFloat
      _ -> throwError ("Could not execute ++ on type: " ++ (show t) ++ " for variable " ++ (show name))
tExp (EMMin name) = do
    t <- tGetVarType name
    case t of
      Types.TInt -> return Types.TInt
      Types.TFloat -> return Types.TFloat
      _ -> throwError ("Could not execute ++ on type: " ++ (show t) ++ " for variable " ++ (show name))
tExp (EBNeg exp) = do
    t <- tExp exp
    if t == Types.TBool then return Types.TBool
    else throwError ("Could not negate non-boolean value, got: " ++ (show t))
tExp (ENeg exp) = do
    t <- tExp exp
    case t of
      Types.TInt -> return Types.TInt
      Types.TFloat -> return Types.TFloat
      _ -> throwError ("Could not negate value " ++ (show t))
tExp (EPos exp) = do
    t <- tExp exp
    case t of
      Types.TInt -> return Types.TInt
      Types.TFloat -> return Types.TFloat
      _ -> throwError ("Could not positive value " ++ (show t))
tExp (EVar name) = do
    t <- tGetVarType name
    return t
tExp (EStr s) = return Types.TStr
tExp (EInt i) = return Types.TInt
tExp (EFloat f) = return Types.TFloat
tExp (EBool b) = return Types.TBool


tStatement :: Stm -> TypeChecker TEnv
tStatement (SFunc func) = do
    env <- ask
    (env1, (TFun fun)) <- local (const env) $ tDFunction func
    fun
    return env1
tStatement (SDecl v) = do
    env <- ask
    env1 <- local (const env) $ tVar v
    return env1
tStatement (SExp exp) = do
    env <- ask
    t <- tExp exp
    return env
tStatement (SBlock stms) = tStatements stms
tStatement (SWhile exp stm) = do
    t <- tExp exp
    if t == Types.TBool then
        tStatement stm
    else throwError ("Invalid while condition type " ++ (show t))
tStatement (SForD var expCheck expFinal stm) = do
    env <- ask
    env1 <- local (const env) $ tVar var
    tCheck <- local (const env1) $ tExp expCheck
    e <- local (const env1) $ tExp expFinal
    if tCheck == Types.TBool then do
        env2 <- local (const env1) $ tStatement stm
        return env
    else throwError ("For condition must be boolean, got " ++ (show tCheck))
tStatement (SForE expBefore expCheck expFinal stm) = do
    env <- ask
    e <- local (const env) $ tExp expBefore
    tCheck <- local (const env) $ tExp expCheck
    e <- local (const env) $ tExp expFinal
    if tCheck == Types.TBool then do
        env2 <- local (const env) $ tStatement stm
        return env
    else throwError ("For condition must be boolean, got " ++ (show tCheck))
tStatement (SIf exp stm) = do
    b <- tExp exp
    if b == Types.TBool then do
        env <- tStatement stm
        return env
    else throwError ("If statement requires boolean value, got: " ++ (show b))
tStatement (SIfElse exp stmok stmelse) = do
    env <- ask
    b <- tExp exp
    if b == Types.TBool then do
        env1 <- local (const env) $ tStatement stmok
        env1 <- local (const env) $ tStatement stmelse
        return env
    else throwError ("If statement requires boolean value, got: " ++ (show b))
tStatement (SReturnOne exp) = do
    env <- ask
    let (expT, a, b, c) = env
    t <- tExp exp
    if t == expT then return env
    else if expT == Null then return (t, a, b, c)
    else throwError ("Invalid return value type: want: " ++ (show expT) ++ ", got: " ++ (show t))
tStatement SReturn = do
    env <- ask
    let (expT, a, b, c) = env
    if expT == Null then
        return (expT, a, b, c)
    else throwError ("Invalid return value, function does not return value.")
tStatement SJContinue = ask
tStatement SJBreak = ask

tStatements :: [Stm] -> TypeChecker TEnv
tStatements [] = ask
tStatements (s:ss) = do
    env <- tStatement s
    env1 <- local (const env) $ tStatements ss
    return env1

tBindArgument :: (TVar,TType) -> TypeChecker TEnv
tBindArgument (name,val) = do
    env <- ask
    env1 <- local (const env) $ tSetVar name val
    return env1

tBindArguments :: [(TVar,TType)] -> TypeChecker TEnv
tBindArguments [] = ask
tBindArguments (a:as) = do
    env <- ask
    env1 <- local (const env) $ tBindArgument a
    env2 <- local (const env1) $ tBindArguments as
    return env2

tDFunction :: Function -> TypeChecker (TEnv, TFun)
tDFunction (FunOne fname fvars rtype stms) = do
    env <- ask
    ftypes <- tVarsToTypes fvars
    let rttype = typeToTType rtype
    let (_, vEnv, funcEnv, sEnv) = env
    let fEnv = (Null, vEnv, funcEnv, sEnv)
    let func = do
        args <- local (const fEnv) $ tParseVars fvars
        fEnv1 <- local (const fEnv) $ tBindArguments args
        fEnv2 <- local (const fEnv1) $ tSetFun fname ftypes (TFun func) rttype
        (returnType, _, _, _) <- local (const fEnv2) $ tStatements stms
        if returnType == rttype then return ()
        else throwError ("Function " ++ (show fname) ++ " returned invalid type, want: " ++ (show rttype) ++ ", got: " ++ (show returnType))
    let tfun = (TFun func)
    envS <- local (const env) $ tSetFun fname ftypes tfun rttype
    return (envS, tfun)
tDFunction (FunNone fname fvars stms) = do
    env <- ask
    ftypes <- tVarsToTypes fvars
    let (_, vEnv, funcEnv, sEnv) = env
    let fEnv = (Null, vEnv, funcEnv, sEnv)
    let func = do
        -- add arguments to env
        args <- local (const fEnv) $ tParseVars fvars
        fEnv2 <- local (const fEnv) $ tBindArguments args
        -- add declared function to env
        fEnv3 <- local (const fEnv2) $ tSetFun fname ftypes (TFun func) Null
        -- execute
        (returnType, _, _, _) <- local (const fEnv3) $ tStatements stms
        -- check return type
        if returnType == Null then return ()
        else throwError ("Function " ++ (show fname) ++ " instead of Null returned " ++ (show returnType))
    let tfun = (TFun func)
    envS <- local (const env) $ tSetFun fname ftypes tfun Null
    return (envS, tfun)
tDFunction (FunStr fname fvars rstruct stms) = do
    env <- ask
    rttype <- tGetStructType rstruct
    let (_, vEnv, funcEnv, sEnv) = env
    ftypes <- tVarsToTypes fvars
    let fEnv = (Null, vEnv, funcEnv, sEnv)
    let func = do
        args <- local (const fEnv) $ tParseVars fvars
        fEnv1 <- local (const fEnv) $ tBindArguments args
        fEnv2 <- local (const fEnv1) $ tSetFun fname ftypes (TFun func) rttype
        (returnType, _, _, _) <- local (const fEnv2) $ tStatements stms
        if returnType == rttype then return ()
        else throwError ("Function " ++ (show fname) ++ " returned invalid struct, want: " ++ (show rstruct))
    let tfun = (TFun func)
    envS <- local (const env) $ tSetFun fname ftypes tfun rttype
    return (envS, tfun)

tDStruct :: Struct -> TypeChecker TEnv
tDStruct (IStruct name vars) = do
    env <- ask
    attrs <- tParseVarsOnly vars
    let struct = (Data.Map.fromList attrs)
    env1 <- local (const env) $ tSetStruct name (TStruct struct)
    return env1

tDVar :: Var -> TypeChecker TEnv
tDVar (DVarOnly vo) = tVarOnly vo
tDVar (DVarExpr vr) = tVarExpr vr

tDeclaration :: Decl -> TypeChecker TEnv
tDeclaration (DFunction f) = do
    (env, _) <- tDFunction f
    return env
tDeclaration (DStruct s) = tDStruct s
tDeclaration (DVar v) = tDVar v

tDeclarations :: [Decl] -> TypeChecker TEnv
tDeclarations [] = ask
tDeclarations (d:ds) = do
    env <- ask
    env1 <- local (const env) $ tDeclaration d
    env2 <- local (const env1) $ tDeclarations ds
    return env2

tProgram :: Program -> TypeChecker ()
tProgram (Prog declarations) = do
    env <- tDeclarations declarations
    let (_, _, funcEnv, sEnv) = env
    local (const env) $ checkFuncs (Data.Map.toList funcEnv)
    return ()
    where checkFuncs :: [(TFName, ([TType], TFun, TType))] -> TypeChecker ()
          checkFuncs [] = return $ ()
          checkFuncs (v:vs) = do
              t <- checkFunc (snd v)
              checkFuncs vs
          checkFunc (_, (TFun func), _) = func

typesAnalyze :: Program -> TResult ()
typesAnalyze program = do
    runReaderT (tProgram program) (Null, empty, empty, empty)
    return ()

