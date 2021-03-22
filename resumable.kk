// these are all equivalent

effect control ask1() : int

fun example1() : int {
  with control ask1() { resume(42) }
  ask1()
}

effect fun ask2() : int

fun example2() : int {
  with fun ask2() { 42 }
  ask2()
}

effect val ask3 : int

fun example3() : int {
  with val ask3 = 42 
  ask3
}
