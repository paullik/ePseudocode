-- assign function call or expression or function def
-- return fucntion call or expression or funciton def
-- sequence of stements in complete if in simple if, in for, while, function def


runLex mainParser "func x() ret 5 sf func daca 3 atunci 5 sf daca"
runLex mainParser "func x() ret func y() 1 sffunc daca 1 atunci sfdaca sffunc"
runLex mainParser "func x() ret func y() 1 sffunc ret 1 sffunc"

runLex mainParser "func x() daca 5 atunci 3 sf daca ret 5 sf func"
runLex mainParser "func x() daca 5 atunci 3 sf daca sffunc daca 5 atunci 3 sfdaca"


runLex mainParser "func x() daca 5 atunci 3 sfdaca sffunc"

runLex mainParser "func x() daca 5 atunci 3 sfdaca ret 5 sffunc"

runLex mainParser "func x() ret func y() 1 sffunc sffunc"

runLex mainParser "daca a(b(), c()) atunci a(b(), c()) altfel a(1, 2) sfdaca"

runLex mainParser "a(b(), c()(1))"

runLex mainParser "a(1, func() 2 sffunc)"
runLex mainParser "{func a() ret 42 sffunc, func a() ret 24 sffunc}"
runLex mainParser "a[1]()" -- a[1] is a function
runLex mainParser "a[foo()]()" -- same as above, only foo() gives the index
runLex mainParser "a()()" -- a() returned a function
runLex mainParser "a()()()()()()()()" -- a() returned a function
