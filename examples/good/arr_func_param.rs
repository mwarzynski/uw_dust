fn needs_array(a: [int*10]) -> int {
  return a[0];
}

fn main() -> int {
  a: [int*10] = [1, .. ];
  print(needs_array(a));

  return 0;
}
