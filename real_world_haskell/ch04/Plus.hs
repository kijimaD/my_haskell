a `plus` b = a `Pair` b
             deriving (Show)

foo = Pair 1 2
bar = True `Pair` "quux"
