# NashFP - Effects

An example with random numbers, local mutable state and console IO.
- [Direct Style (Ocaml)](guess.ml)
- [Monadic Style (Haskell)](guess.hs)
- [Effects (Koka)](guess.kk)

We'll [define our own effect](log.kk).

Then we'll [handle that effect](log_console.kk) [with the console](log_with_console.kk) or [collect it](log_collect.kk).

Loops are [may diverge](while.kk). 

Effects let you create your own control-flow structures like [exceptions](exceptions.kk).

> By separating effect signatures from their implementation, algebraic effects provide a high degree of modularity, allowing programmers to express effectful programs independently of the concrete interpretation of their effects. - [Handlers in Action (Sam Lindley, Ohad Kammar, Nicolar Oury)](https://homepages.inf.ed.ac.uk/slindley/papers/handlers.pdf) 