lubi(marcin,gitara).
lubi(magda,ksiazki).
lubi(piotr,gitara).
lubi(ola,sport).
lubi(ania,H):-lubi(magda,H).
wspolne_hobby(X,Y):-lubi(X,G),lubi(Y,G),X\==Y.
/*
program składa się z 6 klauzuli:
4 faktow i 2 reguly.
2 definicje relacji.
*/

/*Test:
1.Kto lubi grać na gitarze?
?- lubi(X,gitara).
X = marcin ;
X = piotr.

2.Co lubi Magda?
?- lubi(magda,X).
X = ksiazki.

3.Czy ktos lubi czytac ksiazki?
?- lubi(_,ksiazki).
true ;
true.

4.Czu Magda i Marcin maja to samo hobby?
?- wspolne_hobby(magda,marcin).
false.

*/
