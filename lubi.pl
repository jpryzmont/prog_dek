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
