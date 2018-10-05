
struct Rectangle {
  x: int,
  y: int
}

fn rectangle_area(r: Rectangle) -> int {
  return r.x * r.y;
}

fn rectangle_new(x: int, y: int) -> Rectangle {
  r: Rectangle;
  r.x = x;
  r.y = y;
  return r;
}

fn main() -> {
  r: Rectangle = rectangle_new(10, 20);
  print(rectangle_area(r));
}
