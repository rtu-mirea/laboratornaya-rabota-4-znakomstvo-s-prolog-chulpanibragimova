domains
  name=symbol
predicates
  nondeterm parent(name,name)
  nondeterm brother(name,name)
  nondeterm ancestor(name,name)
  nondeterm sister(name,name)
  nondeterm female(name)
  nondeterm male(name)
  nondeterm mother(name,name)
  nondeterm father(name,name)
  nondeterm grandfather(name,name)
  nondeterm grandmother(name,name)
  nondeterm uncle(name,name)
  nondeterm child(name, name)
  
clauses
	parent(leonardo, julia).
	parent(leonardo, francisco).
	parent(julia, molly).
	parent(julia, ella).
  	parent(ella, cloe).
	parent(ella, lilly).
	parent(molly, mike).
	parent(molly, paul).
	
	male(mike).male(paul).male(leonardo).male(francisco).
	female(lilly).female(cloe).
	female(molly).female(julia).

 child(Y,X):-parent(X,Y).

 mother(X,Y):-parent(X,Y),female(X). 

 father(X,Y):-parent(X,Y),male(X). 

 ancestor(X,Z):-parent(X,Z).    
 ancestor(X,Z):-parent(X,Y),ancestor(Y,Z). 
  brother(X,Y):-parent(Z,X),parent(Z,Y),male(X), X<>Y.
  sister(X,Y):-parent(Z,X),parent(Z,Y),female(X), X<>Y.
  grandfather(X,Y):- father(X,Z), parent(Z,Y). 
  grandmother(X,Y):- mother(X,Z), parent(Z,Y).
  uncle(X,Y):- brother(X,Z),parent(Z,Y), X<>Z.

goal
%sister(cloe,lilly).
%sister(X,Y).
  %brother(X,Y).
  %grandfather(X,Y).
  %grandmother(X,Y).
  uncle(X,Y).
