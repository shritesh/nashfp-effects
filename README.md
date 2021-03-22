# NashFP - Effects

Let's look at a guess-then-number example that uses random numbers, local mutable state, console IO and panic on exceptions.
- [Direct Style (Ocaml)](guess.ml)
- [Monadic Style (Haskell)](guess.hs)
- [Effects (Koka)](guess.kk)

We'll [define our own effect](log.kk).

Then we'll [handle that effect](log_console.kk) [with the console](log_with_console.kk) or [collect it](log_collect.kk).

Loops [may diverge](while.kk).

Effects let you create your own control-flow structures like [exceptions](exceptions.kk).

TODO: Resumable exceptions, resume twice, (maybe) fork/join

> By separating effect signatures from their implementation, algebraic effects provide a high degree of modularity, allowing programmers to express effectful programs independently of the concrete interpretation of their effects. - [Handlers in Action (Sam Lindley, Ohad Kammar, Nicolar Oury)](https://homepages.inf.ed.ac.uk/slindley/papers/handlers.pdf) 
