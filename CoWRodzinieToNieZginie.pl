//Wiadomo, że Ewa jest rodzicem Ani, a Piotr jest rodzicem Ewy, 
//Marcin jest rodzicem Piotra, Ania jest rodzicem Piotra
rodzic(ewa,ania).
rodzic(piotr,ewa).
rodzic(marcin,piotr).
rodzic(ania,piotr).
przodek(X,Y):-rodzic(Y,Z).
przodek(X,Y):-rodzic(Y,Z),rodzic(Z,Y).