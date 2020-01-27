predicates

nondeterm likes(symbol,symbol) 
nondeterm can_buy(symbol, symbol)
nondeterm person(symbol) 
nondeterm exist(symbol) 
nondeterm haveMoney(symbol)


clauses

person(lilly). 
person(molly). 
person(paul). 
person(bob). 
person(gosha). 
person(gleb). 
person(mike).

haveMoney(molly). 
haveMoney(bob).
haveMoney(gleb). 
haveMoney(mike). 
haveMoney(gosha).

likes(lilly, car). 
likes(molly, candy). 
likes(paul, milk). 
likes(mike, dreams). 
likes(gosha, girls). 
likes(gleb, house).

exist(car). 
exist(candy). 
exist(milk). 
exist(dreams).
exist(house).

can_buy(X, Y) :- person(X),exist(Y), likes(X, Y), haveMoney(X).

goal 
can_buy(molly, candy).