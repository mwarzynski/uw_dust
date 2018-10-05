fn main() -> int {
  values: [int*100] = [ 1, .. ];

  r:int = 0;
  for i: int = 0, i < 100, i++ {
    r += values[i];
  }

  // r = 100
  print(r);

  return 0;
}
