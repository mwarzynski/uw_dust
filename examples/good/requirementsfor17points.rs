fn main() -> {
    number: int = 10;
    isFancy: bool = true;
    print("1. OK. // number=", number, "; isFancy=", isFancy);

    if number + 5 < 16 { // number + 5 = 15
        print("2. OK");
    }

    i: int = 0;
    while i < 10 {
        if i < 2 
            i += 1;
        else if i < 5
            i += 2;
        i++;
    }
    if i == 10 {
        print("3. OK");
    }

    i = 0;
    fn is4ok() -> {
        if i < 5 {
            i += 1;
            is4ok();
        } else {
            print("4. OK");
        }
    }
    is4ok();

    print("5. OK");

    text: str = "The Text!";
    i = 0; i += 1; i++;
    print("6. OK // i=", i, "; text='", text, "'");
}
