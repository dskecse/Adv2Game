data IntegerArithmOperation = Plus   Integer Integer
                            | Minus  Integer Integer
                            | Prod   Integer Integer
                            | Negate Integer

evalOp :: IntegerArithmOperation -> Integer
evalOp op = case op of
  Plus x y  -> x + y
  Minus x y -> x - y
  Prod x y  -> x * y
  Negate x  -> -x
