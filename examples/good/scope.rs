
// yay, functions may return value
fn main() -> int {
  n:int = 0;

  i:int;
  for i = 0, i < 100, i++ {
    { // local scope
      i:int;
      for i = 100, i < 105, i++ {
        n -= 50;
      }
    }
    if i > 100 {
      print("Something went wrong.");
    }

    n += 1000;
  }

  print(n); // n = 75000
  return 0;
}
