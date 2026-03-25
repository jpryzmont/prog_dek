% Rekurencjia 
% silnia - rekurencja sodkowa
% 0!=1, n!=n*(n-1)!, n>0

% silnia (+N,S)
% spełniony, gdy S = N!

%Rekurencja:
	silnia(N,S):-N>0, N1 is N-1, silnia (N1,S1), S is N*S1.
% waruenk konczoacy rekurencje
	silnia(0,1). 