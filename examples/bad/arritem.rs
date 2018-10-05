fn main() -> {
    a: [int*10] = [5, .. ];
    for i: int = 0, i < len(a), i++ {
        a[i]++;    // DOES NOT WORK
        a[i] += 1; // DOES NOT WORK
    }
}
