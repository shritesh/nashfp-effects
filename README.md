# NashFP - Effects

## Side Effects

An example with random numbers, mutable state and console IO

### Direct Style
```ocaml
let game (answer : int) : int =
  let count = ref 0 in 

  let rec play () =
    print_string "Guess a number: ";
    let guess = read_int () in
    count := !count + 1;
    match compare guess answer with
    | -1 ->
      print_endline "Too Low";
      play ()
    | 1 ->
      print_endline "Too High";
      play ()
    | _ (* 0 *) -> 
      print_endline "Correct";
      !count
  in play ()
        
let main = 
  Random.self_init ();
  let answer = Random.int 100 in
  let guesses = game answer in
  print_endline ("It look " ^ (string_of_int guesses) ^ " tries.")
```

### Monadic Style
```haskell 
-- Based on https://wiki.haskell.org/Simple_StateT_use
import Control.Monad.State
import System.Random

game :: Int -> StateT Int IO ()
game answer =
  do
    lift $ putStr "Guess a number: "
    input <- lift getLine
    let guess = read input
    modify (+ 1)
    case compare guess answer of
      LT -> do
        lift $ putStrLn "Too low"
        game answer
      GT -> do
        lift $ putStrLn "Too high"
        game answer
      EQ -> lift $ putStrLn "Correct"

main = do
  answer <- getStdRandom (randomR (1, 100))
  guesses <- execStateT (game answer) 0
  putStrLn $ "It took " ++ show guesses ++ " tries."
```

## Algebraic Effect

## Effect Handlers

## Effect Systems