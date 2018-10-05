
fn sum(a:int = 1, n:int = 5) -> int {
    if n < 0 {
        return a;
    }
    return a + sum(a, n-1);
}

// function does not return a value
fn main() -> {
    print(sum(10));
}
