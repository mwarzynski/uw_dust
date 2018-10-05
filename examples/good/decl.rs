fn main() -> int {
  // string 
  err:str = "Unable to print your number.";
  str_number:str = "123";

  // at least two types
  is_number:bool = true;
  number:int;
 
  // str -> int
  number = parse_int(str_number);

  i:float = 0.0;
  i = (i / 100000.0) * 10000.0 + (-10.0) - (-10.0);
  is_number = i > 0.0;

  while i < 50.0 {
    i++;
  }

  // if .. else 
  if !is_number {
    print(number);
  } else {
    print(err);
  }

  return 0;
}
