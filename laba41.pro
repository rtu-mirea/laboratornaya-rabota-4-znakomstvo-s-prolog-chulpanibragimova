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
  	parent(ella, cloe).
	parent(ella, lilly).
	parent(molly, mike).
	parent(molly, paul).
	parent(julia, molly).
	parent(julia, ella).
	male(mike).
	male(paul).
	female(lilly).female(cloe).
	female(molly).female(julia).

 child(Y,X):-parent(X,Y).

 mother(X,Y):-parent(X,Y),female(X). 

 father(X,Y):-parent(X,Y),male(X). 

 ancestor(X,Z):-parent(X,Z).    
 ancestor(X,Z):-parent(X,Y),ancestor(Y,Z). 
  brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),male(Y).
  sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),female(Y).
  grandfather(X,Y):- father(X,Z), parent(Z,Y). 
  grandmother(X,Y):- mother(X,Z), parent(Z,Y).
  uncle(X,Y):- parent(Z,Y), brother(X,Z), X<>Z.

goal
sister(cloe,lilly).
%sister(X,Y).
  %brother(X,Y).
  %grandfather(X,Y).
  %grandmother(X,Y).
%uncle(X,Y).