# Dust

**D(ummy R)ust**

My language is designed to be similar to Rust.
Grammar (`lang_grammar.cf`) is based on C-- rules from BNF tutorial.

NOTE: Example files `examples/good/requirementsfor*` should be helpful. ;)

## Types

Supported types:
 - `int`   (integer)
 - `float` (float)
 - `str` (string)
 - `bool` (boolean)

Example of string usage:
```
text:str = "some text";
print(text); // print text to stdout
```

## Arithmetic, comparison

Basic arithmetic, comparisons:
 - `+`
 - `-`
 - `*`
 - `/`
 - `<`
 - `>`
 - `==`
 - `!=`

Basic arithmetic operators:
 - `++`
 - `--`
 - `+=`
 - `-=`

Also, there are two fancy three arguments comparisons:
 - `x < y < z`
 - `x > y > z`

## If, while

For `if`, `while` require statement without parentheses.
Example:
```
while i < 10 {
  i++;
}
```
Example if:
```
if 0 < i < 10 && 0 < j {
  return true;
} else {
  return false;
}

if a {
    ...    
} else if b {
    ...
} else {
    ...    
}
```
Elif is not supported.

## For
```
for i:int = 0, i < 10, i++ {
  // do something  
}
j:int;
for j = 1, j < 10, j++ {
  // do something more    
} 
```

## Break, continue

Inside `for` and `while` standard implementation.
Outside these Keywords produce an error.

## Functions

Function declaration:
```
fn function_name() -> int {}
fn function_name2(a:int) -> {}
```
Functions accept as arguments only basic types (built-in types and structs).
Functions might be declared inside other functions (and then will be
visible only in the local scope). Therefore nested functions declarations are allowed.
```

fn hello_world() -> {
    fn hello_world_better() -> {
        print("Hello, World"):    
    }
    hello_world_better();
}
```

## Type check

Before the execution begins, language interpreter will ensure
correct usage of types in provided code.

## Arrays

There are three ways to declare an array:
```
// array's length will be determined from value
a: [int] = [1,2,3,4,5];
// array's length is 10
a: [int*10];
// array's length is 10 and all values are 1
a: [int*10] = [ 1, .. ];
```

You may access array values in the standard way:
```
a[0]; // where 0 is an index
```

## Dicts

There is only one way to declare dict:
```
scores: {str -> int}; // creates new, empty dict
```

Setting values (for keys) and accessing them is as follows:
```
scores["MIM"] = 100;
scores["PW"]  = 1;

if scores["MIM"] > scores["PW"] {
  print("MIM is the best.");
} else {
  panic("Something went wrong.");
}
```

## Struct

Structs might be initialized anywhere, but their attributes must be of built-in type
(see: supported types).

Struct declaration:
```
struct Point {
  x: int,
  y: int
}
```

How to use?
```
p: Point;
p.x = 10;
p.y = 20;
print(distance(p));
```

## Scope

Scopes define visibility of variables and functions. It's possible to have
global as well as local variables.

## Dynamic errors

If interpreter will detect any major error (like division by zero),
appropiate information will be printed to stderr. In this case, interpreter will
end execution immediately.
Example error: `you human idiot: division by zero`

