# NashFP - Effects

We'll be using [Koka](https://koka-lang.github.io/) and [OCaml Multicore](https://github.com/ocaml-multicore/ocaml-multicore) so you might want to install them.

Let's look at a guess-the-number program that uses random numbers, local mutable state, console IO and panic on exceptions.
- [Direct Style (Mainline OCaml)](guess.ml)
- [Monadic Style (Haskell)](guess.hs)
- [Effects (Koka)](guess.kk)

We'll [define our own effect](log.kk).

Then we'll [handle that effect](log_console.kk) [with the console](log_with_console.kk) or [collect it](log_collect.kk).

Loops [may diverge](while.kk).

Effects really are just [resumable exceptions](resumable.kk).

Effects let you create your own control-flow structures like [exceptions](exceptions.kk) or [your own scheduler](sched.ml).

You can do cool things if you [resume twice](twice.kk).

> By separating effect signatures from their implementation, algebraic effects provide a high degree of modularity, allowing programmers to express effectful programs independently of the concrete interpretation of their effects. - [Handlers in Action (Sam Lindley, Ohad Kammar, Nicolar Oury)](https://homepages.inf.ed.ac.uk/slindley/papers/handlers.pdf) 
