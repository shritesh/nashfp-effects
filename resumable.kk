// these are all equivalent

effect control ask() : int

fun example1() : int {
  with control ask() { resume(42) }
  ask() + 1
}

fun example2() : int {
  with fun ask() { 42 }
  ask() + 1
}

effect val ask2 : int

fun example3() : int {
  with val ask2 = 42 
  ask2 + 1
}
