
// array as a return value does not work
nope2() -> [int*2] {
  return [1,2];
}

nope3() -> bool {
  if false {
    // goto, really?
    goto main; // nope, it's not the kernel space
  } else {
    return false; 
  }
}

nope4() -> {
  text:str = "yay";
  if text == "y" {
    return false;
  } elif text == yay { // no elif
    return false;
  }
  return true;
}

nope5() -> {
  i:int = 1;
  j:int = 2;

  i *= j; // nope
  i /= j; // nope
  // there is only support for += and -=
}

nope6() -> {
  // should fail before execution
  i:int = "lol";
}

nope7() -> {
  del:int = 0;
  val:int = 1029301238;

  // example of handling dynamic errors
  // e.g. division by zero

  // interpreter will detect runtime
  // error and as a result program ends
  // with appropiate text sent to stderr
  // like: 'you idiot: division by zero'
  return val / del;
}

nope8() -> {
  // cannot initialize array with more
  // than one value
  i: [int*10] = [1, 2, .. ];
}

nope9() -> {
  // continue/break should be only used
  // inside for/while
  continue;
  break;

  // but, return anywhere inside the function is okay
}

nope10() -> {
  j:int = 1;
  {
    // local scope
    i:int = 2;
  }

  // i was declared outside current scope ...
  print(j*i);
  // ... therefore using i here will produce runtime error
}

