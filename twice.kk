effect control ask() : bool

fun xor() : <ask,console> () {
  val first = ask()
  val second = ask()
  val result = if (first) then !second else second

  println(first.show ++ " xor " ++ second.show ++ " = " ++ result.show)
}

fun once() {
  var current := False

  with fun ask() {
    current := !current
    current
  }
  xor()
}

fun twice() {
  with control ask() {
    resume(True)
    resume(False)
  }
  xor()
}
