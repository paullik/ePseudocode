module EPseudocode.Helpers
where

import EPseudocode.Data

replace :: Int -> a -> [a] -> [a]
replace i val list = a ++ [val] ++ b where (a, _:b) = splitAt i list


replaceString :: Int -> String -> String -> String
replaceString i replacee str = a ++ replacee ++ b where (a, _:b) = splitAt i str


invalidListIndex :: String -> Integer -> String
invalidListIndex listName index = "Invalid list index: " ++ listName ++ "[" ++ show index ++ "]"


invalidStrIndex :: String -> Integer -> String
invalidStrIndex strName index = "Invalid string index: " ++ strName ++ "[" ++ show index ++ "]"


invalidNestedListIndex :: Integer -> String
invalidNestedListIndex index = "Invalid nested list index: " ++ show index


invalidNestedStrIndex :: Integer -> String
invalidNestedStrIndex index = "Invalid nested string index: " ++ show index


mainHasArgs :: [Stmt] -> Bool
mainHasArgs [] = False
mainHasArgs (stmt:stmts) = case stmt of
    E (FuncDef "main" (_:_) _) -> True
    E (FuncDef "main" [] _) -> False
    _ -> mainHasArgs stmts
