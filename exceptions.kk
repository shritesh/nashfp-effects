effect control raise(msg : string) : a

fun safe-divide(x : int, y : int) : raise int {
  if (y == 0) then 
    raise("div-by-zero")
  else
    x / y
}

fun compute() : raise int {
  13 + safe-divide(1,0)
}

fun raise-const() : total int {
  with control raise(_msg) {
    42
  }
  compute()
}

// 42 not, 13 + 42
// The control flow moves to the handler

fun raise-maybe() : total maybe<int> {
  with control raise(_msg) {
    Nothing
  }
  Just(compute())
}
