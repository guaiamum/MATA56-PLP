1 + 2 == +(1, 2). %true
1 + 2 == 2 + 1. %false
1 + 2 == 1 + X. %true / FALSE
1 + 2 = 1 + X. %X = 2
1 + 2 = X. %X = 1 + 2
1 + 2 = 2 + 1. %false
1 + 2 = 2 + X. %false
1 + 2 =:= 2 + 1. %true
1 + 2 =:= 2 + X. %false / NOT sufficiently instantiated
X is 1 + 2. % X = 3
1 + 2 is X. % X = 1 + 2 / NOT sufficiently instantiated
