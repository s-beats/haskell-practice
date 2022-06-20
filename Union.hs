data Something
  = SomethingString String
  | SomethingInt Int
  | SomethingHuman {name2 :: String, age2 :: Int}
  deriving (Show)

doSomething (SomethingString a) = "a"
doSomething (SomethingInt b) = "b"
doSomething (SomethingHuman c d) = "c"
