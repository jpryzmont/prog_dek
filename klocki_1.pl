% PROGRAM: klocki_1
% Baza wiedzy o układzie klocków
% Definiowane predykaty:
% 	na/2
%==================================
% na(X,Y)
% opis: spełniony, gdy klocek X leży
% bezposrednio na klocku Y
%----------------------------------
	na(c,a).
	na(c,b).
	na(d,c).
%----------------------------------
/*
Inomrajce o budowie programu:
Program składa sie z 3 klauzul.
Program zawiera 1 defincje relacji.
Jest to relacaj na/2.
Defincja relacji na/2 składa sie z
3 klazul, które sa faktami.
*/ 
/*
pod(X,Y)
klocek X leży bezpośrednio pod kockiemy Y
*/
pod(X,Y):-na(Y,X).
/*
miedzy(X,Y,Z)
klocek X lezy miedzy klockami Y i Z
*/
miedzy(X,Y,Z):-na(Y,X),pod(Z,X).
miedzy(X,Y,Z):-na(Z,X),pod(Y,X).

