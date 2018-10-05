fn is12ok() -> {
    fn probably() -> {
        print("12. OK");
    }
}

fn main() -> {
    works: {str -> bool};
    works["dicts"] = true;
    if works["dicts"] {
        print("11.c OK");
    }

    i: int = 0;
    while i < 100 {
        i++;
        if i < 25 {
            continue;
        } else {
            break;
        }
        i += 100000;
    }
    print("11.e OK // i=", i);
    
    is12ok();
}
