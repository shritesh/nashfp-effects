effect fun log(msg : string) : ()

fun work() {
  log("I'm starting 'work'")

  val answer = 42
  println("The answer is " ++ answer.show)

  log("The answer turned out to be " ++ answer.show)
}

fun collect-logger(action) {
  var logs := []

  with handler {
    fun log(msg) {
      logs := Cons(msg, logs)
    }
    return (_) {
      logs.reverse
    }
  } 

  action()
}

fun main() {
  val logs = collect-logger(work)
  logs
}