-- Based on https://wiki.haskell.org/Simple_StateT_use
import Control.Monad.State
import System.Random

game :: Int -> IO Int
game answer =
  execStateT play 0
  where
    play :: StateT Int IO ()
    play = do
      lift $ putStrLn "Guess a number:"
      input <- lift getLine
      let guess = read input
      modify (+ 1)
      case compare guess answer of
        LT -> do
          lift $ putStrLn "Too low"
          play
        GT -> do
          lift $ putStrLn "Too high"
          play
        EQ -> lift $ putStrLn "Correct"

main = do
  answer <- randomRIO (1, 100)
  guesses <- game answer
  putStrLn $ "It took " ++ show guesses ++ " tries."