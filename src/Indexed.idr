module Indexed

%default total
%access public export

infixr 1 :->

(:->) : (a, b : i -> Type) -> (i -> Type)
(:->) a b i = a i -> b i

infixr 2 :+

(:+) : (a, b : i -> Type) -> (i -> Type)
(:+) a b i = Either (a i) (b i)

infixr 3 :*

(:*) : (a, b : i -> Type) -> (i -> Type)
(:*) a b i = Pair (a i) (b i)


All : (a : i -> Type) -> Type
All {i} a = {i : i} -> a i