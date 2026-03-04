lubi(jan,tatry).
lubi(jan,beskidy).
lubi(jerzy,beskidy).
lubi(jerzy,bieszczady).
lubi(adam,sudety).
lubi(justyna,bieszczady).
bratnia_dusza(X,Y):-lubi(X,G),lubi(Y,G),X\==Y.
/*
program składa się z 7 klauzul:
6 faktow (lubi) i 1 regula (bratnia dusza)
2 definicje relacji (lubi, bratnia dusza)
*/


/*
Test:
1.Czy Jerzy lubi sudety?
?- lubi(jerzy,sudety).
false.

2.Co lubi Jan?
?- lubi(jan,X).
X = tatry ;
X = beskidy.

3.Kto lubi bieszczady?
?- lubi(X,bieszczady).
X = jerzy ;
X = justyna.

4.Czy Jan ma bratnia dusze?
?- bratnia_dusza(jan,_).
true.

5.Kto jest bratnia dusza Justyny?
?- bratnia_dusza(justyna,X).
X = jerzy ;

6.Jakie pary osob ssa bratnimi duszami?
?- bratnia_dusza(Y,X).
Y = jan,
X = jerzy ;
Y = jerzy,
X = jan ;
Y = jerzy,
X = justyna ;
Y = justyna,
X = jerzy ;
false.

7.Jakie gory jednoczesnie lubi Jan i Jerzy? (, to koniunkcja)
?- lubi(jan,X),lubi(jerzy,X).
X = beskidy ;

*/
