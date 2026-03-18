// Zdefiniujemy sobie relacje na(X,Y) gdy klocek leż
// bezpośrednio nad(X,Y)
// gdy kloeck X leży nad klockiem Y.
na(d,c).
na(c,a).
na(c,b).
na(a,e).
na(b,g).
nad(X,Y):-na(X,Y).
nad(X,Y):-na(X,Z),nad(Z,Y).