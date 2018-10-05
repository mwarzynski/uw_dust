struct Point {
    x: int,
    y: int
}

fn random() -> int {
    return 7;
}

fn main() -> {
    i: int = 0;
    {
        i: int = 2;
    }
    print("8. OK // i=", i);

    print("9. OK // 'Runtime error: Division by zero'");

    print("10. OK // random=", random());

    p: Point;
    p.x = 5;
    p.y = 10;
    print("11.a OK structs // (x,y)=(", p.x, ",", p.y, ")");
    
    arr: [int*10] = [5, .. ];
    print("11.b OK indexed arrays // arr[5]=", arr[5]);

    i = 1 / 0;

    print("9. FAIL");
}
