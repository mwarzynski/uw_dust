fn sum(i:float, j:float) -> float {
  k:float;
  r:float = 0.0;
  for k = 1.0, k < 10.0, k++ {
    if i / k == 0.0 {
      continue;
    }
    r += (i + j) * k;
  }
  return r;
}

fn main() -> {
  print(sum(10.0, 100.0)); 
}

