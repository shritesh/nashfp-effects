import std/num/random
import readline

fun random(max : int) : random int {
  1 + random-int() % 100
}

fun read-int() : <io,exn> int {
  val input = readline()
  parse-int(input).unjust
}

fun game(answer) {
  var count := 0

  fun play() {
    println("Guess a number: ")
    val guess = read-int()

    count := count + 1

    match(compare(guess, answer)) {
      Lt -> {
        println("Too low")
        play()
      }
      Gt -> {
        println("Too high")
        play()
      }
      Eq -> println("Correct")
    }
  }

  play()

  count
}

fun main() {
  val answer = random(100)
  game(answer).println
}