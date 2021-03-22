fun init() : total int {
  0
}

fun main() : <div,console> () {
  var x := init()

  while { x < 10 } {
    x.println
    x := x + 1
  }
}

// a while loop may diverge (not terminate)