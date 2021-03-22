effect fun log(msg : string) : ()

fun work() : <log,console> () {
  log("I'm starting 'work'")

  val answer = 42
  println("The answer is " ++ answer.show)

  log("The answer turned out to be " ++ answer.show)
}

fun main() : <log,console> () {
  work()
}

// try running main