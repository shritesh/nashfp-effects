effect fun log(msg : string) : ()

fun work() {
  log("I'm starting 'work'")

  val answer = 42
  println("The answer is " ++ answer.show)

  log("The answer turned out to be " ++ answer.show)
}

fun console-logger(action) {
  with fun log(msg) {
    println("[Log] " ++ msg)
  }
  action()
}

fun main() {
  with console-logger
  work()
}