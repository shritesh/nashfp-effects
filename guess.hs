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