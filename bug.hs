```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- Output: [1,2,3,4,5]

  let zs = [5,4,3,2,1]
  let ws = sort zs
  print ws -- Output: [1,2,3,4,5]

  let as = [1, 3, 5, 2, 4]
  let bs = sort as
  print bs -- Output: [1,2,3,4,5]

  -- Now let's add a non-comparable element
  let cs = [1, 3, 5, 'a', 2, 4]
  let ds = sort cs -- Error: No instance for (Ord Char) arising from a use of `sort'
  print ds
```