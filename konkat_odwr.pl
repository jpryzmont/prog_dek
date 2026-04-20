/*
konkat(L1,L2,L3)
spelniony, gdy L3 jest polaczeniem listy L1 i L2
-------------------------------------------------

rekurencja ze wzgledu na liste L1:

warunek konczacy rekurencje: polaczenie listy
pustej z lista L daje liste L
*/
	konkat([],L,L).
/*
rekurencja:
głowa listy L3 jest glowa listy L1
ogon listy L3 jest polaczeniem ogona listy L1 z lista L2
*/
	konkat([H1|T1],L2,[H1|T3]):-konkat(T1,L2,T3).

/*
odwrota_lista(L1,L2)
spelniony gdy L2 jest odwroceniem listy L1

koniec rekurencji:
*/
	odwr_list([],[]).

/*
rekurencja:
*/
	odwr_list([H|T],L2):-odwr_list(T,M), konkat(M,[H],L2).