```haskell
import Data.List (sort)
import Data.Ord (comparing)

main :: IO ()
main = do
  -- Solution: Using separate sorting for different types
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys

  let zs = [5,4,3,2,1]
  let ws = sort zs
  print ws

  let as = [1, 3, 5, 2, 4]
  let bs = sort as
  print bs

  -- Handle mixed types by separating and sorting each type individually. For instance, handling Ints and Chars
  let cs = [1, 3, 5, 'a', 2, 4]
  let ints = filter isNumber cs
  let chars = filter isChar cs
  let sortedInts = sort ints
  let sortedChars = sort chars
  print $ sortedInts ++ sortedChars

  where
    isNumber x = case x of
                     Int _ -> True
                     _ -> False
    isChar x = case x of
                 Char _ -> True
                 _ -> False
```