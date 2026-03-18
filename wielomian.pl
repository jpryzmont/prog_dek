% Rozpoznawanie wielomianow jedenej zmiennej
% o wspolczynnikach liczbowych
/*
Definicja: rekurencja strukturalna
1) x jest wielominam zmiennej x
   c - liczba jest wielomianem dowolnej zmiennej
2) jeżeli W, W1, W2 sa wielominami zm. x, to
   -W, W1+W2, W1-W2, W1*W2, W^n (n - liczba narturalan) sa wielominami zmiennej x
*/

% wielomian(W,X)
% spełniony, gdy W jest wielomianem zmiennej X
% o wspolczynnikach liczbowych
% definicja rekurencyjna

% warunki zakonczenia rekurencji
	wielomian(X,X).
	wielomian(C,_):-number(C).
% rekurencja
	wielomian(-W,X):- wielomian(W,X).
	wielomian(W1+W2,X:- wielomian(W1,X), wielomian(W2,X).
	wielomian(W1-W2,X):- wielomian(W1,X), wielomian(W2,X).
	wielomian(W1*W2,X):- wielomian(W1,X), wielomian(W2,X).
	wielomian(W^N,X):- integer(N), N>1, wielomian(W,X).
