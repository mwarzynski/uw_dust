fn main() -> {
    a: [int*10];
    for i: int = 0, i < 10, i++ {
        a[i] = i;
    }
    for i: int = 0, i < len(a), i++ {
        print(a[i]);
    }
}
