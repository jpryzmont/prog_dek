matka(marta,ola).
matka(helena,pawel).
dziecko(kamil,marta).
dziecko(piotr,helena).
matka(X,Y):-dziecko(Y,X).
rodzenstwo(X,Y):-matka(G,X),matka(G,Y),X\==Y.

/*
Program ma 7 klauzuli:
4 fakty i 3 reguly
*/

/*
Test:
1.Kto jest matka Pawla?
?- matka(X,pawel).
X = helena ;
false.

2.Czy Kamil jest czyims rodzenstwem?
?- rodzenstwo(kamil,_).
true ;

3.Czyja matka jest Marta?
?- matka(marta,X).
X = ola ;
X = kamil.

4.Czy Piotr i Pawel maja wspolna matke?
?- rodzenstwo(piotr,pawel).
true ;
*/