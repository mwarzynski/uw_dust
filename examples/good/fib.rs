
fn fib(n:int = 5, a:int = 1, b:int = 1) -> int {
  if 0 < n {
    return fib(n-1, b, a+b);
  }
  return a+b;
}

fn fib_better(n:int = 5) -> int {
  a: int = 1;
  b: int = 1;
  c: int;

  for i:int = 0, i < n, i++ {
    if a + b < 0 {
      // break and continue keywords
      break; // overflow
    }

    c = a + b;
    a = b;
    b = c;
  }

  return b;
}

fn magic(a: int, b: int) -> int {
  return a;
}

fn main() -> {
  print(fib_better(5));
}

