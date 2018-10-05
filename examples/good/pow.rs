
fn pow(k:int, n:int) -> int {
  i:int = 0;
  for i = 1, i < n, i++ {
    k = k*k;
  }
  return k;
}

fn main() -> int {
  i:int;
  for i = 1, i <= 10, i++ {
    print(pow(i, 2));
  }
  return 0;
}
