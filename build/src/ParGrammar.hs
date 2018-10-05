{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
module ParGrammar where
import AbsGrammar
import LexGrammar
import ErrM
import qualified Data.Array as Happy_Data_Array
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

newtype HappyAbsSyn  = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn28 :: (Ident) -> (HappyAbsSyn )
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> (Ident)
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: (Integer) -> (HappyAbsSyn )
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> (Integer)
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: (String) -> (HappyAbsSyn )
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> (String)
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: (Double) -> (HappyAbsSyn )
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> (Double)
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: (TokenBool) -> (HappyAbsSyn )
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> (TokenBool)
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: (Program) -> (HappyAbsSyn )
happyIn33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> (Program)
happyOut33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: (Decl) -> (HappyAbsSyn )
happyIn34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> (Decl)
happyOut34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: (Var) -> (HappyAbsSyn )
happyIn35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> (Var)
happyOut35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (Struct) -> (HappyAbsSyn )
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (Struct)
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (Function) -> (HappyAbsSyn )
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (Function)
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (VarOnly) -> (HappyAbsSyn )
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (VarOnly)
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (VarExpr) -> (HappyAbsSyn )
happyIn39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (VarExpr)
happyOut39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: ([Stm]) -> (HappyAbsSyn )
happyIn40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> ([Stm])
happyOut40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: ([Decl]) -> (HappyAbsSyn )
happyIn41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> ([Decl])
happyOut41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: ([VarOnly]) -> (HappyAbsSyn )
happyIn42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> ([VarOnly])
happyOut42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: ([VarExpr]) -> (HappyAbsSyn )
happyIn43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> ([VarExpr])
happyOut43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: ([Var]) -> (HappyAbsSyn )
happyIn44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> ([Var])
happyOut44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyIn45 :: ([Ident]) -> (HappyAbsSyn )
happyIn45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn ) -> ([Ident])
happyOut45 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut45 #-}
happyIn46 :: (Stm) -> (HappyAbsSyn )
happyIn46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn ) -> (Stm)
happyOut46 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut46 #-}
happyIn47 :: (Exp) -> (HappyAbsSyn )
happyIn47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn ) -> (Exp)
happyOut47 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyIn48 :: (Exp) -> (HappyAbsSyn )
happyIn48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn48 #-}
happyOut48 :: (HappyAbsSyn ) -> (Exp)
happyOut48 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut48 #-}
happyIn49 :: (Exp) -> (HappyAbsSyn )
happyIn49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn49 #-}
happyOut49 :: (HappyAbsSyn ) -> (Exp)
happyOut49 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut49 #-}
happyIn50 :: (Exp) -> (HappyAbsSyn )
happyIn50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn50 #-}
happyOut50 :: (HappyAbsSyn ) -> (Exp)
happyOut50 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut50 #-}
happyIn51 :: (Exp) -> (HappyAbsSyn )
happyIn51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn51 #-}
happyOut51 :: (HappyAbsSyn ) -> (Exp)
happyOut51 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut51 #-}
happyIn52 :: (Exp) -> (HappyAbsSyn )
happyIn52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn52 #-}
happyOut52 :: (HappyAbsSyn ) -> (Exp)
happyOut52 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut52 #-}
happyIn53 :: (Exp) -> (HappyAbsSyn )
happyIn53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn ) -> (Exp)
happyOut53 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: (Exp) -> (HappyAbsSyn )
happyIn54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn ) -> (Exp)
happyOut54 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: ([Exp]) -> (HappyAbsSyn )
happyIn55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn ) -> ([Exp])
happyOut55 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: (Type) -> (HappyAbsSyn )
happyIn56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn ) -> (Type)
happyOut56 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: ([Type]) -> (HappyAbsSyn )
happyIn57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn ) -> ([Type])
happyOut57 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x00\x00\x31\x00\x1b\x02\x1d\x02\x22\x02\x1a\x02\x1a\x02\x00\x00\x00\x00\x1a\x02\x1a\x02\x1a\x02\x1a\x02\x00\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x9f\x04\x9f\x04\x1a\x02\x00\x00\x35\x02\x0c\x02\x00\x00\x00\x00\x00\x00\x00\x00\x0c\x02\x99\x04\x00\x00\x00\x00\x00\x00\x00\x00\x23\x02\x00\x00\xfe\xff\x67\x00\xf9\x01\x14\x04\x00\x00\x00\x00\x0b\x02\x35\x01\x35\x01\x35\x01\x35\x01\x00\x00\x00\x00\x00\x00\x00\x00\x3e\x01\x0b\x02\x40\x01\x0b\x02\x66\x00\x9d\x00\x0e\x00\x10\x00\x0b\x02\x0b\x02\x86\x04\x19\x02\x00\x00\x00\x00\x00\x00\xfa\x01\x17\x02\x16\x02\x15\x02\xf8\x01\x35\x01\x35\x01\x30\x01\x35\x01\x00\x00\x18\x02\xf0\x01\xfe\x01\x05\x02\xd8\x01\xf5\x01\xfc\x01\xbd\x01\xd9\x01\xc9\x01\x9f\x01\xca\x03\x63\x00\x9f\x01\x9f\x01\x9f\x01\x9f\x01\x93\x01\x8d\x01\x8d\x01\xa5\x01\x00\x00\x00\x00\x74\x01\x31\x00\x00\x00\x00\x00\x7b\x01\x00\x00\x7a\x01\x91\x04\x7a\x01\x9c\x04\x7a\x01\x4d\x04\x7a\x01\xec\x00\x00\x01\x90\x01\x00\x00\x00\x01\x98\x01\x92\x01\x97\x01\x00\x00\x00\x00\x00\x00\x00\x00\x35\x01\x00\x00\x35\x01\x00\x00\x35\x01\x6d\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x35\x01\x6d\x01\x35\x01\x00\x00\x00\x00\x95\x01\x00\x00\x35\x01\x9f\x04\x00\x00\x00\x00\x00\x00\xa3\x04\x00\x00\x14\x04\x14\x04\x14\x04\x14\x04\xf9\x01\xa8\x01\x12\x01\xdd\x00\x67\x00\x67\x00\xfe\xff\xfe\xff\xb1\x00\xfe\xff\x69\x01\x00\x00\x00\x00\x79\x01\x4b\x01\x35\x01\x35\x01\x32\x01\x00\x00\x00\x00\x00\x00\x00\x00\x5f\x01\x5e\x01\x9f\x04\x9f\x04\x00\x00\x45\x01\x43\x01\x9f\x04\x00\x00\x00\x00\x00\x00\x9f\x04\x00\x00\x26\x01\x25\x01\x48\x01\x4b\x00\x35\x01\x35\x01\x31\x01\x3e\x00\x00\x01\x3f\x01\x3b\x01\x39\x01\x00\x00\x35\x01\x24\x01\x35\x01\x35\x01\x00\x00\x32\x00\x01\x00\x35\x01\x00\x00\x2a\x01\x35\x01\x35\x01\x00\x00\x08\x01\x1c\x01\x9f\x04\x00\x00\x00\x00\xf2\x00\xf2\x00\x00\x00\xf5\x00\xf1\x00\xdb\x00\xda\x00\xea\x00\x00\x01\x00\x01\x4f\x00\xfe\xff\xd7\x00\xd0\x00\x00\x00\x00\x00\x00\x00\xd9\x00\x35\x01\x00\x00\xd9\x00\x00\x00\xd4\x00\xcb\x00\xbc\x00\x00\x00\x00\x00\xa8\x00\x78\x00\x00\x00\x00\x00\x35\x01\xd8\x00\x00\x00\x00\x00\xd3\x00\xc0\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x75\x00\xec\x01\x76\x01\xc7\x00\xbf\x00\x38\x00\x9f\x00\xae\x00\xac\x00\x33\x01\x8d\x00\xf8\x00\x0f\x00\x6d\x02\x3b\x03\x8f\x03\xbd\x03\xe1\x03\x2e\x04\x5c\x04\x85\x04\x42\x03\x94\x01\xa5\x00\x91\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x04\x20\x03\x7b\x04\x61\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xab\x00\x88\x02\x18\x03\xfd\x02\xf5\x02\xa4\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd1\x01\x52\x02\x00\x00\x00\x00\x00\x00\x00\x00\xa2\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd1\x01\x00\x00\x00\x00\x00\x00\x00\x00\x16\x01\x56\x00\x65\x00\x4c\x00\xb4\x00\x2c\x00\x0a\x00\x52\x02\x37\x02\x00\x00\x00\x00\x1c\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x78\x01\x00\x00\x89\x03\x00\x00\x6f\x03\x9e\x00\xb8\x03\x57\x04\xb3\x03\xae\x03\xdc\x03\xd7\x03\x29\x04\x0f\x04\x0a\x04\x05\x04\x52\x04\x38\x04\x33\x04\x9d\x01\x4e\x00\xfa\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6f\x01\x6d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x00\xda\x02\xd2\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x72\x00\x6b\x00\x00\x00\x00\x00\x00\x00\x61\x00\x00\x00\x00\x00\x00\x00\x5a\x00\x00\x00\xd2\x00\x00\x00\x00\x00\x00\x00\x69\x03\x63\x03\x00\x00\x00\x00\x01\x02\x00\x00\x00\x00\x00\x00\x00\x00\x49\x03\x00\x00\x00\x04\xe6\x03\x00\x00\x00\x00\x00\x00\x94\x03\x00\x00\x00\x00\xb7\x02\xaf\x02\x00\x00\x3f\x00\x00\x00\x22\x00\x00\x00\x00\x00\x3a\x00\x0c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe6\x01\xcb\x01\x27\x00\x00\x00\x00\x00\x00\x00\x15\x00\x00\x00\x00\x00\x00\x00\x53\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb0\x01\x11\x00\xfd\xff\xb0\x01\xb0\x01\x00\x00\x00\x00\x94\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xcd\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcf\xff\xcd\xff\xcb\xff\xc8\xff\xc5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8b\xff\x00\x00\x84\xff\x00\x00\xe6\xff\x83\xff\x00\x00\x85\xff\x87\xff\x88\xff\x86\xff\x00\x00\x92\xff\x90\xff\x91\xff\x8f\xff\x8e\xff\x8a\xff\x8c\xff\xad\xff\xaa\xff\xa7\xff\xa0\xff\x9b\xff\xb0\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe5\xff\xe4\xff\xe3\xff\xe2\xff\x92\xff\x00\x00\x92\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x92\xff\x00\x00\xc0\xff\xdd\xff\xdc\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcf\xff\xc2\xff\x00\x00\x00\x00\xc4\xff\x00\x00\x00\x00\xc7\xff\x00\x00\x00\x00\xca\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe0\xff\xdf\xff\x00\x00\xe1\xff\xcc\xff\xde\xff\x00\x00\xce\xff\xcb\xff\x00\x00\xc8\xff\x00\x00\xc5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb6\xff\x00\x00\x00\x00\x00\x00\x00\x00\xb5\xff\xb4\xff\xbe\xff\xbf\xff\x8b\xff\x97\xff\x00\x00\x96\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x94\xff\x93\xff\x00\x00\x95\xff\x8b\xff\x84\xff\x82\xff\x89\xff\x8d\xff\x00\x00\x98\xff\x9c\xff\x9e\xff\x9f\xff\x9d\xff\xa2\xff\xa3\xff\xa5\xff\xa6\xff\xa9\xff\xa8\xff\xac\xff\xab\xff\x00\x00\xb3\xff\x98\xff\xae\xff\xaf\xff\x00\x00\xc5\xff\x00\x00\x00\x00\xb9\xff\xb7\xff\xbc\xff\xbd\xff\xc1\xff\xd6\xff\xd7\xff\x00\x00\x00\x00\xc3\xff\x00\x00\x00\x00\x00\x00\xc6\xff\xd6\xff\xd7\xff\x00\x00\xc9\xff\xcb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x9a\xff\x00\x00\x99\xff\x00\x00\x00\x00\x99\xff\xa1\xff\xa4\xff\x00\x00\xb1\xff\x00\x00\x00\x00\x00\x00\xb8\xff\x00\x00\x00\x00\x00\x00\xd1\xff\xd3\xff\x00\x00\x00\x00\xdb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb2\xff\x00\x00\x00\x00\xcf\xff\xba\xff\xbb\xff\xd4\xff\x8b\xff\xd5\xff\x00\x00\xd4\xff\x00\x00\x00\x00\x00\x00\xcf\xff\xcf\xff\x00\x00\x00\x00\xd8\xff\xd2\xff\x00\x00\x00\x00\xda\xff\xd9\xff\x00\x00\x00\x00\xd0\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x03\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x00\x00\x07\x00\x0c\x00\x00\x00\x0a\x00\x0b\x00\x01\x00\x07\x00\x00\x00\x02\x00\x0a\x00\x0b\x00\x03\x00\x13\x00\x14\x00\x15\x00\x10\x00\x17\x00\x18\x00\x19\x00\x11\x00\x1b\x00\x0c\x00\x1d\x00\x1e\x00\x11\x00\x0c\x00\x21\x00\x22\x00\x23\x00\x17\x00\x25\x00\x00\x00\x2a\x00\x28\x00\x29\x00\x2a\x00\x00\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x00\x00\x07\x00\x2a\x00\x01\x00\x0a\x00\x0b\x00\x1c\x00\x31\x00\x01\x00\x31\x00\x0a\x00\x1c\x00\x06\x00\x13\x00\x14\x00\x15\x00\x1c\x00\x17\x00\x18\x00\x19\x00\x00\x00\x1b\x00\x00\x00\x1d\x00\x1e\x00\x06\x00\x21\x00\x21\x00\x22\x00\x23\x00\x00\x00\x25\x00\x27\x00\x1b\x00\x28\x00\x29\x00\x2a\x00\x2c\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x01\x00\x00\x00\x1b\x00\x04\x00\x1c\x00\x02\x00\x07\x00\x1c\x00\x06\x00\x07\x00\x0b\x00\x20\x00\x0b\x00\x0b\x00\x1c\x00\x24\x00\x0f\x00\x26\x00\x1c\x00\x11\x00\x29\x00\x01\x00\x05\x00\x2c\x00\x04\x00\x1c\x00\x17\x00\x07\x00\x1d\x00\x1e\x00\x0d\x00\x0b\x00\x21\x00\x22\x00\x23\x00\x1c\x00\x25\x00\x1c\x00\x1d\x00\x28\x00\x29\x00\x00\x00\x1c\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x31\x00\x1d\x00\x1e\x00\x31\x00\x0b\x00\x21\x00\x22\x00\x23\x00\x0f\x00\x25\x00\x00\x00\x00\x00\x28\x00\x29\x00\x00\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x01\x00\x0b\x00\x00\x00\x04\x00\x1c\x00\x1d\x00\x07\x00\x0c\x00\x14\x00\x15\x00\x0b\x00\x00\x00\x18\x00\x19\x00\x06\x00\x07\x00\x0d\x00\x0c\x00\x07\x00\x0b\x00\x01\x00\x0a\x00\x0b\x00\x04\x00\x1c\x00\x11\x00\x07\x00\x10\x00\x1d\x00\x1e\x00\x0b\x00\x09\x00\x21\x00\x22\x00\x23\x00\x1b\x00\x25\x00\x31\x00\x08\x00\x28\x00\x29\x00\x00\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x1d\x00\x1e\x00\x1b\x00\x0a\x00\x21\x00\x22\x00\x23\x00\x0e\x00\x25\x00\x0a\x00\x10\x00\x28\x00\x29\x00\x1b\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x01\x00\x1a\x00\x16\x00\x04\x00\x14\x00\x15\x00\x07\x00\x1a\x00\x18\x00\x19\x00\x0b\x00\x00\x00\x29\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x07\x00\x29\x00\x01\x00\x0a\x00\x0b\x00\x04\x00\x1b\x00\x2b\x00\x07\x00\x10\x00\x1d\x00\x1e\x00\x0b\x00\x1b\x00\x21\x00\x22\x00\x23\x00\x1b\x00\x25\x00\x18\x00\x19\x00\x28\x00\x29\x00\x00\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x1d\x00\x1e\x00\x2d\x00\x0a\x00\x21\x00\x22\x00\x23\x00\x0e\x00\x25\x00\x14\x00\x15\x00\x28\x00\x29\x00\x18\x00\x19\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x01\x00\x16\x00\x00\x00\x04\x00\x2d\x00\x01\x00\x07\x00\x0e\x00\x04\x00\x16\x00\x0b\x00\x07\x00\x0a\x00\x05\x00\x0e\x00\x0b\x00\x0e\x00\x04\x00\x13\x00\x04\x00\x0a\x00\x08\x00\x09\x00\x08\x00\x0a\x00\x0c\x00\x0d\x00\x0c\x00\x0f\x00\x06\x00\x0f\x00\x2b\x00\x1f\x00\x2c\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x1a\x00\x16\x00\x1a\x00\x16\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x16\x00\x16\x00\x00\x00\x2c\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x07\x00\x05\x00\x16\x00\x0a\x00\x0b\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x2c\x00\x05\x00\x04\x00\x0a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x13\x00\x29\x00\x31\x00\x2c\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x18\x00\x19\x00\x07\x00\x13\x00\x09\x00\x0a\x00\x0b\x00\x14\x00\x15\x00\x31\x00\x2c\x00\x18\x00\x19\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x31\x00\x00\x00\x07\x00\x0a\x00\x09\x00\x0a\x00\x0b\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x12\x00\x00\x00\x07\x00\x31\x00\x09\x00\x0a\x00\x0b\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x0a\x00\x12\x00\x07\x00\x31\x00\x09\x00\x0a\x00\x0b\x00\x14\x00\x15\x00\x0a\x00\x12\x00\x18\x00\x19\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x31\x00\x0a\x00\x07\x00\x2c\x00\x09\x00\x0a\x00\x0b\x00\x13\x00\x13\x00\x13\x00\x31\x00\x13\x00\x0a\x00\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x31\x00\x31\x00\x07\x00\x0a\x00\x09\x00\x0a\x00\x0b\x00\x21\x00\x27\x00\xff\xff\x2c\x00\x2c\x00\xff\xff\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\x09\x00\x0a\x00\x0b\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x12\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x07\x00\xff\xff\xff\xff\x0a\x00\x0b\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\xff\xff\xff\xff\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x13\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x1a\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\xff\xff\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x14\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x15\x00\x16\x00\x17\x00\x18\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x21\x00\xff\xff\x16\x00\x17\x00\x18\x00\x19\x00\x27\x00\x16\x00\x17\x00\x18\x00\x19\x00\x2c\x00\x16\x00\x17\x00\x18\x00\x19\x00\x31\x00\xff\xff\x17\x00\x18\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x17\x00\x18\x00\x19\x00\x06\x00\x07\x00\x17\x00\x18\x00\x19\x00\x0b\x00\xff\xff\x17\x00\x18\x00\x19\x00\xff\xff\x11\x00\x17\x00\x18\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\xff\xff\xff\xff\x17\x00\x18\x00\x19\x00\xff\xff\xff\xff\x17\x00\x18\x00\x19\x00\xff\xff\xff\xff\xff\xff\x18\x00\x19\x00\xff\xff\xff\xff\xff\xff\x18\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\xff\xff\x1a\x00\xff\xff\x1c\x00\x18\x00\x19\x00\xff\xff\x20\x00\xff\xff\x18\x00\x19\x00\x24\x00\xff\xff\x26\x00\x18\x00\x19\x00\x29\x00\xff\xff\xff\xff\x2c\x00\x19\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x04\x00\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\xff\xff\xff\xff\x0c\x00\x0d\x00\x19\x00\x0f\x00\xff\xff\xff\xff\x12\x00\x19\x00\xff\xff\xff\xff\x16\x00\x04\x00\x19\x00\xff\xff\x1a\x00\x08\x00\x09\x00\xff\xff\xff\xff\x0c\x00\x0d\x00\xff\xff\x0f\x00\x06\x00\x07\x00\x1a\x00\xff\xff\x1c\x00\x0b\x00\x16\x00\xff\xff\x20\x00\xff\xff\x1a\x00\x11\x00\x24\x00\x1a\x00\x26\x00\x1c\x00\xff\xff\x29\x00\x1c\x00\x20\x00\x2c\x00\x1b\x00\x20\x00\x24\x00\xff\xff\x26\x00\x24\x00\xff\xff\x26\x00\xff\xff\xff\xff\x2c\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x8a\x00\xa4\xff\xa4\xff\xa4\xff\xa4\xff\xa4\xff\x53\x00\xa4\xff\x03\x01\x51\x00\xa4\xff\xa4\xff\xeb\x00\x54\x00\x51\x00\x8c\x00\x45\x00\x46\x00\x8a\x00\xa4\xff\xd9\x00\x8f\x00\xd4\x00\xa4\xff\x90\x00\x91\x00\xbb\x00\xa4\xff\x04\x01\xa4\xff\xa4\xff\x52\x00\x00\x01\xa4\xff\xa4\xff\xa4\xff\x8d\x00\xa4\xff\xf4\x00\x8b\x00\xa4\xff\xa4\xff\xa4\xff\xbc\x00\xa4\xff\xa4\xff\xa4\xff\xa4\xff\xa4\xff\xa4\xff\xa1\xff\xa1\xff\xa1\xff\xa1\xff\xa1\xff\x59\x00\xa1\xff\x8b\x00\xec\x00\xa1\xff\xa1\xff\xed\x00\xff\xff\xef\x00\xff\xff\x5f\x00\xf5\x00\xe4\x00\xa1\xff\x8e\x00\x8f\x00\xbd\x00\xa1\xff\xda\x00\x91\x00\xc1\x00\xa1\xff\xa1\x00\xa1\xff\xa1\xff\xe9\x00\x4c\x00\xa1\xff\xa1\xff\xa1\xff\xc5\x00\xa1\xff\x63\x00\xe5\x00\xa1\xff\xa1\xff\xa1\xff\x1b\x00\xa1\xff\xa1\xff\xa1\xff\xa1\xff\xa1\xff\xa1\xff\x31\x00\x56\x00\xe5\x00\x32\x00\xc2\x00\x8c\x00\x33\x00\x1e\x00\x92\x00\x93\x00\x34\x00\x1f\x00\x57\x00\x94\x00\xc6\x00\x20\x00\xc4\x00\x21\x00\xcb\x00\x95\x00\xf7\x00\x31\x00\x68\x00\x1b\x00\x32\x00\xcc\x00\x8d\x00\x33\x00\x4a\x00\x4b\x00\x69\x00\x34\x00\x4c\x00\x4d\x00\x4e\x00\xcf\x00\x4f\x00\x1b\x00\x9d\x00\x50\x00\x51\x00\x56\x00\xd0\x00\x1b\x00\x35\x00\x36\x00\x37\x00\x38\x00\xff\xff\x4a\x00\x4b\x00\xff\xff\x57\x00\x4c\x00\x4d\x00\x4e\x00\x58\x00\x4f\x00\xb0\x00\x56\x00\x50\x00\x51\x00\x6c\x00\x0a\x01\x1b\x00\x35\x00\x36\x00\x37\x00\x38\x00\x31\x00\x5e\x00\x7c\x00\x32\x00\x1b\x00\x1c\x00\x33\x00\x75\x00\x8e\x00\x8f\x00\x34\x00\x53\x00\x90\x00\x91\x00\x92\x00\x93\x00\x5c\x00\x5d\x00\x54\x00\x94\x00\x31\x00\x45\x00\x46\x00\x32\x00\x21\x00\x95\x00\x33\x00\xc0\x00\x4a\x00\x4b\x00\x34\x00\x60\x00\x4c\x00\x4d\x00\x4e\x00\xd8\x00\x4f\x00\xff\xff\x61\x00\x50\x00\x51\x00\x59\x00\x0b\x01\x1b\x00\x35\x00\x36\x00\x37\x00\x38\x00\x4a\x00\x4b\x00\x0e\x01\x5a\x00\x4c\x00\x4d\x00\x4e\x00\xca\x00\x4f\x00\x0c\x01\x0d\x01\x50\x00\x51\x00\x07\x01\x06\x01\x1b\x00\x35\x00\x36\x00\x37\x00\x38\x00\x31\x00\x08\x01\xff\x00\x32\x00\xd9\x00\x8f\x00\x33\x00\xfb\x00\x90\x00\x91\x00\x34\x00\x53\x00\x02\x01\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x54\x00\x03\x01\x31\x00\x45\x00\x46\x00\x32\x00\xfa\x00\xfc\x00\x33\x00\x55\x00\x4a\x00\x4b\x00\x34\x00\xfd\x00\x4c\x00\x4d\x00\x4e\x00\xfe\x00\x4f\x00\xa0\x00\x2d\x00\x50\x00\x51\x00\x59\x00\xbb\x00\x1b\x00\x35\x00\x36\x00\x37\x00\x38\x00\x4a\x00\x4b\x00\x35\x00\x5a\x00\x4c\x00\x4d\x00\x4e\x00\xc8\x00\x4f\x00\x8e\x00\x8f\x00\x50\x00\x51\x00\x90\x00\x91\x00\x1b\x00\x35\x00\x36\x00\x37\x00\x38\x00\x31\x00\xef\x00\x59\x00\x32\x00\x35\x00\x31\x00\x33\x00\xf3\x00\x32\x00\xde\x00\x34\x00\x33\x00\x5a\x00\xe0\x00\xe6\x00\x34\x00\x5b\x00\x82\x00\x79\x00\x82\x00\xe1\x00\x83\x00\x84\x00\x83\x00\xe2\x00\x85\x00\x86\x00\x85\x00\x96\x00\xea\x00\x96\x00\xeb\x00\xd2\x00\x1b\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x97\x00\xce\x00\x97\x00\xcf\x00\x1b\x00\x35\x00\x36\x00\x37\x00\x38\x00\x1b\x00\x35\x00\x36\x00\x37\x00\x38\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xff\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\xce\x00\xcf\x00\x53\x00\x1b\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x63\x00\xd6\x00\xd7\x00\x45\x00\x46\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x9e\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xb3\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x1b\x00\xa0\x00\xb5\x00\xb6\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\xb7\x00\xb9\x00\xca\x00\xff\xff\x1b\x00\x27\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x42\x00\x23\x00\x24\x00\x25\x00\x26\x00\xa2\x00\x2d\x00\x43\x00\x6c\x00\x44\x00\x45\x00\x46\x00\x8e\x00\x8f\x00\xff\xff\x1b\x00\xda\x00\x91\x00\x6d\x00\x48\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x42\x00\x23\x00\x24\x00\x25\x00\x26\x00\xff\xff\x53\x00\x43\x00\x6f\x00\x44\x00\x45\x00\x46\x00\x6a\x00\x65\x00\x66\x00\x67\x00\x45\x00\x46\x00\xf7\x00\x48\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x42\x00\x23\x00\x24\x00\x25\x00\x26\x00\x70\x00\x53\x00\x43\x00\xff\xff\x44\x00\x45\x00\x46\x00\x64\x00\x65\x00\x66\x00\x67\x00\x45\x00\x46\x00\xf8\x00\x48\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x42\x00\x23\x00\x24\x00\x25\x00\x26\x00\x71\x00\x72\x00\x43\x00\xff\xff\x44\x00\x45\x00\x46\x00\x8e\x00\x8f\x00\x73\x00\x74\x00\x90\x00\x91\x00\xe2\x00\x48\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x42\x00\x23\x00\x24\x00\x25\x00\x26\x00\xff\xff\x75\x00\x43\x00\x1b\x00\x44\x00\x45\x00\x46\x00\x7e\x00\x7f\x00\x80\x00\xff\xff\x81\x00\x9c\x00\xb7\x00\x48\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x42\x00\x23\x00\x24\x00\x25\x00\x26\x00\xff\xff\xff\xff\x43\x00\x9d\x00\x44\x00\x45\x00\x46\x00\x4c\x00\x63\x00\x00\x00\x1b\x00\x1b\x00\x00\x00\xb9\x00\x48\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x42\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x43\x00\x00\x00\x44\x00\x45\x00\x46\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x6d\x00\x48\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x42\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x43\x00\x00\x00\x44\x00\x45\x00\x46\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x47\x00\x48\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x42\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x7a\x00\x00\x00\x00\x00\x45\x00\x46\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x7b\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x01\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf0\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xf1\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd2\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\xd3\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x76\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x77\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x79\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x99\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x22\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x38\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x38\x00\x23\x00\x24\x00\x25\x00\x26\x00\x41\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x28\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x39\x00\xde\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x38\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x38\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x38\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\xe6\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xe7\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xb1\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x38\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x38\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb2\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x40\x00\x29\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xf3\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\xac\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xad\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\xaf\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x3f\x00\x2a\x00\x2b\x00\x2c\x00\x2d\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x4c\x00\x00\x00\xaa\x00\x2b\x00\x2c\x00\x2d\x00\x63\x00\xab\x00\x2b\x00\x2c\x00\x2d\x00\x1b\x00\x3e\x00\x2b\x00\x2c\x00\x2d\x00\xff\xff\x00\x00\xdb\x00\x2c\x00\x2d\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\xdc\x00\x2c\x00\x2d\x00\x92\x00\x93\x00\xa6\x00\x2c\x00\x2d\x00\x94\x00\x00\x00\xa7\x00\x2c\x00\x2d\x00\x00\x00\x95\x00\xa8\x00\x2c\x00\x2d\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\x00\x00\x00\x00\xa9\x00\x2c\x00\x2d\x00\x00\x00\x00\x00\x3d\x00\x2c\x00\x2d\x00\x00\x00\x00\x00\x00\x00\xa3\x00\x2d\x00\x00\x00\x00\x00\x00\x00\xa4\x00\x2d\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x00\x00\xbf\x00\x00\x00\x1e\x00\xa5\x00\x2d\x00\x00\x00\x1f\x00\x00\x00\xae\x00\x2d\x00\x20\x00\x00\x00\x21\x00\x3c\x00\x2d\x00\xc0\x00\x00\x00\x00\x00\x1b\x00\x97\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x3a\x00\x23\x00\x24\x00\x25\x00\x26\x00\x82\x00\x00\x00\x00\x00\x00\x00\x83\x00\x84\x00\x00\x00\x00\x00\x85\x00\x86\x00\x98\x00\x87\x00\x00\x00\x00\x00\x74\x00\x9a\x00\x00\x00\x00\x00\x88\x00\x82\x00\x3b\x00\x00\x00\x89\x00\x83\x00\x84\x00\x00\x00\x00\x00\x85\x00\x86\x00\x00\x00\x87\x00\x92\x00\x93\x00\xc8\x00\x00\x00\x1e\x00\x94\x00\x88\x00\x00\x00\x1f\x00\x00\x00\x89\x00\x95\x00\x20\x00\xc4\x00\x21\x00\x1e\x00\x00\x00\xc0\x00\x1e\x00\x1f\x00\x1b\x00\xdb\x00\x1f\x00\x20\x00\x00\x00\x21\x00\x20\x00\x00\x00\x21\x00\x00\x00\x00\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (25, 125) [
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84),
	(85 , happyReduce_85),
	(86 , happyReduce_86),
	(87 , happyReduce_87),
	(88 , happyReduce_88),
	(89 , happyReduce_89),
	(90 , happyReduce_90),
	(91 , happyReduce_91),
	(92 , happyReduce_92),
	(93 , happyReduce_93),
	(94 , happyReduce_94),
	(95 , happyReduce_95),
	(96 , happyReduce_96),
	(97 , happyReduce_97),
	(98 , happyReduce_98),
	(99 , happyReduce_99),
	(100 , happyReduce_100),
	(101 , happyReduce_101),
	(102 , happyReduce_102),
	(103 , happyReduce_103),
	(104 , happyReduce_104),
	(105 , happyReduce_105),
	(106 , happyReduce_106),
	(107 , happyReduce_107),
	(108 , happyReduce_108),
	(109 , happyReduce_109),
	(110 , happyReduce_110),
	(111 , happyReduce_111),
	(112 , happyReduce_112),
	(113 , happyReduce_113),
	(114 , happyReduce_114),
	(115 , happyReduce_115),
	(116 , happyReduce_116),
	(117 , happyReduce_117),
	(118 , happyReduce_118),
	(119 , happyReduce_119),
	(120 , happyReduce_120),
	(121 , happyReduce_121),
	(122 , happyReduce_122),
	(123 , happyReduce_123),
	(124 , happyReduce_124),
	(125 , happyReduce_125)
	]

happy_n_terms = 50 :: Int
happy_n_nonterms = 30 :: Int

happyReduce_25 = happySpecReduce_1  0# happyReduction_25
happyReduction_25 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TV happy_var_1)) -> 
	happyIn28
		 (Ident happy_var_1
	)}

happyReduce_26 = happySpecReduce_1  1# happyReduction_26
happyReduction_26 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn29
		 ((read ( happy_var_1)) :: Integer
	)}

happyReduce_27 = happySpecReduce_1  2# happyReduction_27
happyReduction_27 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn30
		 (happy_var_1
	)}

happyReduce_28 = happySpecReduce_1  3# happyReduction_28
happyReduction_28 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TD happy_var_1)) -> 
	happyIn31
		 ((read ( happy_var_1)) :: Double
	)}

happyReduce_29 = happySpecReduce_1  4# happyReduction_29
happyReduction_29 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_TokenBool happy_var_1)) -> 
	happyIn32
		 (TokenBool (happy_var_1)
	)}

happyReduce_30 = happySpecReduce_1  5# happyReduction_30
happyReduction_30 happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	happyIn33
		 (AbsGrammar.Prog (reverse happy_var_1)
	)}

happyReduce_31 = happySpecReduce_1  6# happyReduction_31
happyReduction_31 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (AbsGrammar.DStruct happy_var_1
	)}

happyReduce_32 = happySpecReduce_1  6# happyReduction_32
happyReduction_32 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (AbsGrammar.DFunction happy_var_1
	)}

happyReduce_33 = happySpecReduce_2  6# happyReduction_33
happyReduction_33 happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (AbsGrammar.DVar happy_var_1
	)}

happyReduce_34 = happySpecReduce_1  7# happyReduction_34
happyReduction_34 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn35
		 (AbsGrammar.DVarOnly happy_var_1
	)}

happyReduce_35 = happySpecReduce_1  7# happyReduction_35
happyReduction_35 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn35
		 (AbsGrammar.DVarExpr happy_var_1
	)}

happyReduce_36 = happyReduce 5# 8# happyReduction_36
happyReduction_36 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_2 of { happy_var_2 -> 
	case happyOut42 happy_x_4 of { happy_var_4 -> 
	happyIn36
		 (AbsGrammar.IStruct happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_37 = happyReduce 10# 9# happyReduction_37
happyReduction_37 (happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_2 of { happy_var_2 -> 
	case happyOut44 happy_x_4 of { happy_var_4 -> 
	case happyOut56 happy_x_7 of { happy_var_7 -> 
	case happyOut40 happy_x_9 of { happy_var_9 -> 
	happyIn37
		 (AbsGrammar.FunOne happy_var_2 happy_var_4 happy_var_7 (reverse happy_var_9)
	) `HappyStk` happyRest}}}}

happyReduce_38 = happyReduce 10# 9# happyReduction_38
happyReduction_38 (happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_2 of { happy_var_2 -> 
	case happyOut44 happy_x_4 of { happy_var_4 -> 
	case happyOut28 happy_x_7 of { happy_var_7 -> 
	case happyOut40 happy_x_9 of { happy_var_9 -> 
	happyIn37
		 (AbsGrammar.FunStr happy_var_2 happy_var_4 happy_var_7 (reverse happy_var_9)
	) `HappyStk` happyRest}}}}

happyReduce_39 = happyReduce 9# 9# happyReduction_39
happyReduction_39 (happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_2 of { happy_var_2 -> 
	case happyOut44 happy_x_4 of { happy_var_4 -> 
	case happyOut40 happy_x_8 of { happy_var_8 -> 
	happyIn37
		 (AbsGrammar.FunNone happy_var_2 happy_var_4 (reverse happy_var_8)
	) `HappyStk` happyRest}}}

happyReduce_40 = happySpecReduce_3  10# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (AbsGrammar.Dec happy_var_1 happy_var_3
	)}}

happyReduce_41 = happySpecReduce_3  10# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (AbsGrammar.DecStruct happy_var_1 happy_var_3
	)}}

happyReduce_42 = happyReduce 7# 10# happyReduction_42
happyReduction_42 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_4 of { happy_var_4 -> 
	case happyOut56 happy_x_6 of { happy_var_6 -> 
	happyIn38
		 (AbsGrammar.DecDict happy_var_1 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_43 = happyReduce 7# 10# happyReduction_43
happyReduction_43 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_4 of { happy_var_4 -> 
	case happyOut29 happy_x_6 of { happy_var_6 -> 
	happyIn38
		 (AbsGrammar.DecArrMul happy_var_1 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_44 = happyReduce 5# 11# happyReduction_44
happyReduction_44 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_3 of { happy_var_3 -> 
	case happyOut48 happy_x_5 of { happy_var_5 -> 
	happyIn39
		 (AbsGrammar.DecSet happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_45 = happyReduce 9# 11# happyReduction_45
happyReduction_45 (happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_4 of { happy_var_4 -> 
	case happyOut55 happy_x_8 of { happy_var_8 -> 
	happyIn39
		 (AbsGrammar.DecArr happy_var_1 happy_var_4 happy_var_8
	) `HappyStk` happyRest}}}

happyReduce_46 = happyReduce 5# 11# happyReduction_46
happyReduction_46 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	case happyOut48 happy_x_5 of { happy_var_5 -> 
	happyIn39
		 (AbsGrammar.DecStructSet happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_47 = happyReduce 13# 11# happyReduction_47
happyReduction_47 (happy_x_13 `HappyStk`
	happy_x_12 `HappyStk`
	happy_x_11 `HappyStk`
	happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut56 happy_x_4 of { happy_var_4 -> 
	case happyOut29 happy_x_6 of { happy_var_6 -> 
	case happyOut47 happy_x_10 of { happy_var_10 -> 
	happyIn39
		 (AbsGrammar.DecArrMulInit happy_var_1 happy_var_4 happy_var_6 happy_var_10
	) `HappyStk` happyRest}}}}

happyReduce_48 = happySpecReduce_0  12# happyReduction_48
happyReduction_48  =  happyIn40
		 ([]
	)

happyReduce_49 = happySpecReduce_2  12# happyReduction_49
happyReduction_49 happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_2 of { happy_var_2 -> 
	happyIn40
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_50 = happySpecReduce_0  13# happyReduction_50
happyReduction_50  =  happyIn41
		 ([]
	)

happyReduce_51 = happySpecReduce_2  13# happyReduction_51
happyReduction_51 happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	case happyOut34 happy_x_2 of { happy_var_2 -> 
	happyIn41
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_52 = happySpecReduce_0  14# happyReduction_52
happyReduction_52  =  happyIn42
		 ([]
	)

happyReduce_53 = happySpecReduce_1  14# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn42
		 ((:[]) happy_var_1
	)}

happyReduce_54 = happySpecReduce_3  14# happyReduction_54
happyReduction_54 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut42 happy_x_3 of { happy_var_3 -> 
	happyIn42
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_55 = happySpecReduce_0  15# happyReduction_55
happyReduction_55  =  happyIn43
		 ([]
	)

happyReduce_56 = happySpecReduce_1  15# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn43
		 ((:[]) happy_var_1
	)}

happyReduce_57 = happySpecReduce_3  15# happyReduction_57
happyReduction_57 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	case happyOut43 happy_x_3 of { happy_var_3 -> 
	happyIn43
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_58 = happySpecReduce_0  16# happyReduction_58
happyReduction_58  =  happyIn44
		 ([]
	)

happyReduce_59 = happySpecReduce_1  16# happyReduction_59
happyReduction_59 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn44
		 ((:[]) happy_var_1
	)}

happyReduce_60 = happySpecReduce_3  16# happyReduction_60
happyReduction_60 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_61 = happySpecReduce_1  17# happyReduction_61
happyReduction_61 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 ((:[]) happy_var_1
	)}

happyReduce_62 = happySpecReduce_3  17# happyReduction_62
happyReduction_62 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn45
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_63 = happySpecReduce_1  18# happyReduction_63
happyReduction_63 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 (AbsGrammar.SFunc happy_var_1
	)}

happyReduce_64 = happySpecReduce_2  18# happyReduction_64
happyReduction_64 happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 (AbsGrammar.SDecl happy_var_1
	)}

happyReduce_65 = happySpecReduce_2  18# happyReduction_65
happyReduction_65 happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 (AbsGrammar.SExp happy_var_1
	)}

happyReduce_66 = happySpecReduce_3  18# happyReduction_66
happyReduction_66 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_2 of { happy_var_2 -> 
	happyIn46
		 (AbsGrammar.SBlock (reverse happy_var_2)
	)}

happyReduce_67 = happySpecReduce_3  18# happyReduction_67
happyReduction_67 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_2 of { happy_var_2 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (AbsGrammar.SWhile happy_var_2 happy_var_3
	)}}

happyReduce_68 = happyReduce 7# 18# happyReduction_68
happyReduction_68 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut35 happy_x_2 of { happy_var_2 -> 
	case happyOut47 happy_x_4 of { happy_var_4 -> 
	case happyOut47 happy_x_6 of { happy_var_6 -> 
	case happyOut46 happy_x_7 of { happy_var_7 -> 
	happyIn46
		 (AbsGrammar.SForD happy_var_2 happy_var_4 happy_var_6 happy_var_7
	) `HappyStk` happyRest}}}}

happyReduce_69 = happyReduce 7# 18# happyReduction_69
happyReduction_69 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut47 happy_x_2 of { happy_var_2 -> 
	case happyOut47 happy_x_4 of { happy_var_4 -> 
	case happyOut47 happy_x_6 of { happy_var_6 -> 
	case happyOut46 happy_x_7 of { happy_var_7 -> 
	happyIn46
		 (AbsGrammar.SForE happy_var_2 happy_var_4 happy_var_6 happy_var_7
	) `HappyStk` happyRest}}}}

happyReduce_70 = happySpecReduce_3  18# happyReduction_70
happyReduction_70 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_2 of { happy_var_2 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 (AbsGrammar.SIf happy_var_2 happy_var_3
	)}}

happyReduce_71 = happyReduce 5# 18# happyReduction_71
happyReduction_71 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut47 happy_x_2 of { happy_var_2 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	case happyOut46 happy_x_5 of { happy_var_5 -> 
	happyIn46
		 (AbsGrammar.SIfElse happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_72 = happySpecReduce_3  18# happyReduction_72
happyReduction_72 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_2 of { happy_var_2 -> 
	happyIn46
		 (AbsGrammar.SReturnOne happy_var_2
	)}

happyReduce_73 = happySpecReduce_2  18# happyReduction_73
happyReduction_73 happy_x_2
	happy_x_1
	 =  happyIn46
		 (AbsGrammar.SReturn
	)

happyReduce_74 = happySpecReduce_2  18# happyReduction_74
happyReduction_74 happy_x_2
	happy_x_1
	 =  happyIn46
		 (AbsGrammar.SJContinue
	)

happyReduce_75 = happySpecReduce_2  18# happyReduction_75
happyReduction_75 happy_x_2
	happy_x_1
	 =  happyIn46
		 (AbsGrammar.SJBreak
	)

happyReduce_76 = happySpecReduce_3  19# happyReduction_76
happyReduction_76 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 (AbsGrammar.EAss happy_var_1 happy_var_3
	)}}

happyReduce_77 = happyReduce 6# 19# happyReduction_77
happyReduction_77 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	case happyOut49 happy_x_6 of { happy_var_6 -> 
	happyIn47
		 (AbsGrammar.EAssArr happy_var_1 happy_var_3 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_78 = happyReduce 5# 19# happyReduction_78
happyReduction_78 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	case happyOut48 happy_x_5 of { happy_var_5 -> 
	happyIn47
		 (AbsGrammar.EAssStr happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_79 = happySpecReduce_1  19# happyReduction_79
happyReduction_79 happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 (happy_var_1
	)}

happyReduce_80 = happySpecReduce_3  20# happyReduction_80
happyReduction_80 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut48 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (AbsGrammar.EEPlus happy_var_1 happy_var_3
	)}}

happyReduce_81 = happySpecReduce_3  20# happyReduction_81
happyReduction_81 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut48 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (AbsGrammar.EEMinus happy_var_1 happy_var_3
	)}}

happyReduce_82 = happySpecReduce_1  20# happyReduction_82
happyReduction_82 happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	happyIn48
		 (happy_var_1
	)}

happyReduce_83 = happySpecReduce_3  21# happyReduction_83
happyReduction_83 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (AbsGrammar.ElOr happy_var_1 happy_var_3
	)}}

happyReduce_84 = happySpecReduce_3  21# happyReduction_84
happyReduction_84 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 (AbsGrammar.ElAnd happy_var_1 happy_var_3
	)}}

happyReduce_85 = happySpecReduce_1  21# happyReduction_85
happyReduction_85 happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	happyIn49
		 (happy_var_1
	)}

happyReduce_86 = happySpecReduce_3  22# happyReduction_86
happyReduction_86 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn50
		 (AbsGrammar.EEq happy_var_1 happy_var_3
	)}}

happyReduce_87 = happySpecReduce_3  22# happyReduction_87
happyReduction_87 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn50
		 (AbsGrammar.ENEq happy_var_1 happy_var_3
	)}}

happyReduce_88 = happySpecReduce_1  22# happyReduction_88
happyReduction_88 happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (happy_var_1
	)}

happyReduce_89 = happySpecReduce_3  23# happyReduction_89
happyReduction_89 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	happyIn51
		 (AbsGrammar.ELt happy_var_1 happy_var_3
	)}}

happyReduce_90 = happySpecReduce_3  23# happyReduction_90
happyReduction_90 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	happyIn51
		 (AbsGrammar.ELtE happy_var_1 happy_var_3
	)}}

happyReduce_91 = happyReduce 5# 23# happyReduction_91
happyReduction_91 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	case happyOut51 happy_x_5 of { happy_var_5 -> 
	happyIn51
		 (AbsGrammar.ELt2 happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_92 = happySpecReduce_3  23# happyReduction_92
happyReduction_92 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	happyIn51
		 (AbsGrammar.EGt happy_var_1 happy_var_3
	)}}

happyReduce_93 = happySpecReduce_3  23# happyReduction_93
happyReduction_93 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	happyIn51
		 (AbsGrammar.EGtE happy_var_1 happy_var_3
	)}}

happyReduce_94 = happyReduce 5# 23# happyReduction_94
happyReduction_94 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_3 of { happy_var_3 -> 
	case happyOut51 happy_x_5 of { happy_var_5 -> 
	happyIn51
		 (AbsGrammar.EGt2 happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_95 = happySpecReduce_1  23# happyReduction_95
happyReduction_95 happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (happy_var_1
	)}

happyReduce_96 = happySpecReduce_3  24# happyReduction_96
happyReduction_96 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (AbsGrammar.EAdd happy_var_1 happy_var_3
	)}}

happyReduce_97 = happySpecReduce_3  24# happyReduction_97
happyReduction_97 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (AbsGrammar.ESub happy_var_1 happy_var_3
	)}}

happyReduce_98 = happySpecReduce_3  24# happyReduction_98
happyReduction_98 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (AbsGrammar.EMul happy_var_1 happy_var_3
	)}}

happyReduce_99 = happySpecReduce_3  24# happyReduction_99
happyReduction_99 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (AbsGrammar.EDiv happy_var_1 happy_var_3
	)}}

happyReduce_100 = happySpecReduce_1  24# happyReduction_100
happyReduction_100 happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 (happy_var_1
	)}

happyReduce_101 = happyReduce 4# 25# happyReduction_101
happyReduction_101 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut55 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 (AbsGrammar.Call happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_102 = happyReduce 4# 25# happyReduction_102
happyReduction_102 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 (AbsGrammar.EVarArr happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_103 = happySpecReduce_3  25# happyReduction_103
happyReduction_103 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut28 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 (AbsGrammar.EStrAtt happy_var_1 happy_var_3
	)}}

happyReduce_104 = happySpecReduce_2  25# happyReduction_104
happyReduction_104 happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (AbsGrammar.EPPos happy_var_1
	)}

happyReduce_105 = happySpecReduce_2  25# happyReduction_105
happyReduction_105 happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (AbsGrammar.EMMin happy_var_1
	)}

happyReduce_106 = happySpecReduce_2  25# happyReduction_106
happyReduction_106 happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_2 of { happy_var_2 -> 
	happyIn53
		 (AbsGrammar.EBNeg happy_var_2
	)}

happyReduce_107 = happySpecReduce_2  25# happyReduction_107
happyReduction_107 happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_2 of { happy_var_2 -> 
	happyIn53
		 (AbsGrammar.ENeg happy_var_2
	)}

happyReduce_108 = happySpecReduce_2  25# happyReduction_108
happyReduction_108 happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_2 of { happy_var_2 -> 
	happyIn53
		 (AbsGrammar.EPos happy_var_2
	)}

happyReduce_109 = happySpecReduce_1  25# happyReduction_109
happyReduction_109 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (AbsGrammar.EVar happy_var_1
	)}

happyReduce_110 = happySpecReduce_1  25# happyReduction_110
happyReduction_110 happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (AbsGrammar.EStr happy_var_1
	)}

happyReduce_111 = happySpecReduce_1  25# happyReduction_111
happyReduction_111 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (AbsGrammar.EInt happy_var_1
	)}

happyReduce_112 = happySpecReduce_1  25# happyReduction_112
happyReduction_112 happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (AbsGrammar.EFloat happy_var_1
	)}

happyReduce_113 = happySpecReduce_1  25# happyReduction_113
happyReduction_113 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (AbsGrammar.EBool happy_var_1
	)}

happyReduce_114 = happySpecReduce_3  25# happyReduction_114
happyReduction_114 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_2 of { happy_var_2 -> 
	happyIn53
		 (happy_var_2
	)}

happyReduce_115 = happySpecReduce_1  26# happyReduction_115
happyReduction_115 happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (happy_var_1
	)}

happyReduce_116 = happySpecReduce_0  27# happyReduction_116
happyReduction_116  =  happyIn55
		 ([]
	)

happyReduce_117 = happySpecReduce_1  27# happyReduction_117
happyReduction_117 happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 ((:[]) happy_var_1
	)}

happyReduce_118 = happySpecReduce_3  27# happyReduction_118
happyReduction_118 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut55 happy_x_3 of { happy_var_3 -> 
	happyIn55
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_119 = happySpecReduce_1  28# happyReduction_119
happyReduction_119 happy_x_1
	 =  happyIn56
		 (AbsGrammar.TInt
	)

happyReduce_120 = happySpecReduce_1  28# happyReduction_120
happyReduction_120 happy_x_1
	 =  happyIn56
		 (AbsGrammar.TFloat
	)

happyReduce_121 = happySpecReduce_1  28# happyReduction_121
happyReduction_121 happy_x_1
	 =  happyIn56
		 (AbsGrammar.TStr
	)

happyReduce_122 = happySpecReduce_1  28# happyReduction_122
happyReduction_122 happy_x_1
	 =  happyIn56
		 (AbsGrammar.TBool
	)

happyReduce_123 = happySpecReduce_0  29# happyReduction_123
happyReduction_123  =  happyIn57
		 ([]
	)

happyReduce_124 = happySpecReduce_1  29# happyReduction_124
happyReduction_124 happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	happyIn57
		 ((:[]) happy_var_1
	)}

happyReduce_125 = happySpecReduce_3  29# happyReduction_125
happyReduction_125 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	case happyOut57 happy_x_3 of { happy_var_3 -> 
	happyIn57
		 ((:) happy_var_1 happy_var_3
	)}}

happyNewToken action sts stk [] =
	happyDoAction 49# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TS _ 21) -> cont 21#;
	PT _ (TS _ 22) -> cont 22#;
	PT _ (TS _ 23) -> cont 23#;
	PT _ (TS _ 24) -> cont 24#;
	PT _ (TS _ 25) -> cont 25#;
	PT _ (TS _ 26) -> cont 26#;
	PT _ (TS _ 27) -> cont 27#;
	PT _ (TS _ 28) -> cont 28#;
	PT _ (TS _ 29) -> cont 29#;
	PT _ (TS _ 30) -> cont 30#;
	PT _ (TS _ 31) -> cont 31#;
	PT _ (TS _ 32) -> cont 32#;
	PT _ (TS _ 33) -> cont 33#;
	PT _ (TS _ 34) -> cont 34#;
	PT _ (TS _ 35) -> cont 35#;
	PT _ (TS _ 36) -> cont 36#;
	PT _ (TS _ 37) -> cont 37#;
	PT _ (TS _ 38) -> cont 38#;
	PT _ (TS _ 39) -> cont 39#;
	PT _ (TS _ 40) -> cont 40#;
	PT _ (TS _ 41) -> cont 41#;
	PT _ (TS _ 42) -> cont 42#;
	PT _ (TS _ 43) -> cont 43#;
	PT _ (TV happy_dollar_dollar) -> cont 44#;
	PT _ (TI happy_dollar_dollar) -> cont 45#;
	PT _ (TL happy_dollar_dollar) -> cont 46#;
	PT _ (TD happy_dollar_dollar) -> cont 47#;
	PT _ (T_TokenBool happy_dollar_dollar) -> cont 48#;
	_ -> happyError' (tk:tks)
	}

happyError_ 49# tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: () => a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (returnM) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pProgram tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut33 x))

pDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut34 x))

pVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut35 x))

pStruct tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut36 x))

pFunction tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut37 x))

pVarOnly tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut38 x))

pVarExpr tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut39 x))

pListStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut40 x))

pListDecl tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut41 x))

pListVarOnly tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut42 x))

pListVarExpr tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut43 x))

pListVar tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut44 x))

pListIdent tks = happySomeParser where
  happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (happyOut45 x))

pStm tks = happySomeParser where
  happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (happyOut46 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (happyOut47 x))

pExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (happyOut48 x))

pExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (happyOut49 x))

pExp4 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (happyOut50 x))

pExp5 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (happyOut51 x))

pExp6 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (happyOut52 x))

pExp7 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 20# tks) (\x -> happyReturn (happyOut53 x))

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 21# tks) (\x -> happyReturn (happyOut54 x))

pListExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 22# tks) (\x -> happyReturn (happyOut55 x))

pType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 23# tks) (\x -> happyReturn (happyOut56 x))

pListType tks = happySomeParser where
  happySomeParser = happyThen (happyParse 24# tks) (\x -> happyReturn (happyOut57 x))

happySeq = happyDontSeq


returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ 
  case ts of
    [] -> []
    [Err _] -> " due to lexer error"
    _ -> " before " ++ unwords (map (id . prToken) (take 4 ts))

myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 11 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4










































{-# LINE 11 "<command-line>" #-}
{-# LINE 1 "/opt/ghc/7.10.1/lib/ghc-7.10.1/include/ghcversion.h" #-}

















{-# LINE 11 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}





-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif
{-# LINE 46 "templates/GenericTemplate.hs" #-}


data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList





{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}


          case action of
                0#           -> {- nothing -}
                                     happyFail i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}

                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}


                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = indexShortOffAddr happyActOffsets st
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st


indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#





data HappyAddr = HappyA# Happy_GHC_Exts.Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 170 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = indexShortOffAddr happyGotoOffsets st1
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i



          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = indexShortOffAddr happyGotoOffsets st
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
