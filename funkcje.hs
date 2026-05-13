kwadrat :: Num a => a -> a
kwadrat x=x*x

razy_dwa::Num a => a -> a
razy_dwa x = 2*x

sum_kw :: Num a => a -> a -> a
sum_kw x y = kwadrat x + kwadrat y


pole_kola1 :: Float -> Float
pole_kola1 r =  pi * r^2

pole_kola2 :: Float -> Float
pole_kola2 r = pi * sz
	where sz = r * r

pole_kola3 :: Float -> Float
pole_kola3 r = let sz = r * r
	in pi * sz

pole_c_prostopadlo1 :: Num a => a -> a -> a -> a
pole_c_prostopadlo1 a b h = 2 * a * b + 2 * a * h + 2 * b * h

pole_c_prostopadlo2 :: Num a => a -> a -> a -> a
pole_c_prostopadlo2 a b h = 2 * pp + pb
	where
	pp = a * b
	pb = 2 * a * h + 2 * b * h

pole_c_prostopadlo3 :: Num a => a -> a -> a -> a
pole_c_prostopadlo3 a b h = let 
	pp = a * b 
	pb = 2 * a * h + 2 * b * h	
	in 2 * pp + pb

abs :: Float -> Float
abs x = if x<0 then (-x) else x

sgn :: Float -> Integer
sgn x = if x>0 then 1 else if x==0 then 0 else -1

abs2 :: Float -> Float
abs2 x
	|x<0 = (-x)
	|otherwise = x

sgn2 :: Float -> Integer
sgn2 x
	|x>0 = 1
	|x==0 = 0
	|otherwise = -1

min :: Float -> Float -> Float
min x y = if x>y then y else x

min2 :: Float -> Float -> Float
min2 x y
	|x>y = y
	|otherwise = x

albo_albo :: Bool -> Bool -> Bool
albo_albo x y = if x /= y then True else False

albo_albo2 :: Bool -> Bool -> Bool
albo_albo2 x y
	| x /= y = True
	|otherwise = False

albo_albo3 :: Bool -> Bool -> Bool
albo_albo3 x y =
	not(x && y) && ( x || y)

albo_albo4 :: Bool -> Bool -> Bool
albo_albo4 x y =
	not(x) && y || not(y) && x

sprawdz :: Float -> String
sprawdz x
	|x<0 = "Liczba mniejsza od zera"
	|0 <= x && x <= 10 = "Liczba jest w przedziale <0,10>"
	|otherwise = "Liczba jest wieksza niz 10"

sprawdz2 :: Float -> String
sprawdz2 x = if x<0 then "x<0" else if 0<=x && x<=10 then "<0,10>" else "GT10"

and :: Bool -> Bool -> String
and x y = if x==True && y==True then "jeden" else "zero"

implikacja :: Bool -> Bool -> Bool
implikacja x y = if x == True && y == False then False else True

implikacja2 :: Bool -> Bool -> Bool
implikacja2 x y
	|x == True && y == False = False
	|otherwise = True

--compare funkcja porwnowja 2 argumenty
--Ord - klasa typow dla ktorych zdefiniwane jest porownywanie argumentow
compare ::Ord a=>a->a->Ordering
compare a b
	|a>b = GT
	|a==b = EQ
	|otherwise = LT

pierwiastek :: Float -> Float -> Float -> String
pierwiastek a b c
	|b^2-4*a*c>0 = "Dwa pierwiastki"
	|b^2-4*a*c==0 = "Jeden pierwiastek"
	|otherwise = "Zero pierwiastkow"

--funkcje wyznaczajace pierwszy drugi i trzeci element torjk uporzadkowanej
first :: (a,b,c) -> a
first (x,_,_) = x
second :: (a,b,c) -> b
second (_,y,_) = y
third :: (a,b,c) -> c
third (_,_,z) = z

--LISTY (indeksy od 0)
-- [1,2,3,4]
-- H - głowa
-- T - ogon
-- H=1 T=[2,3,4]
--robilimsy jakies wyliczenia (bedzie takie zadanie na kolokwium)

--rekurencja
-- funckje kwadrat mam wczesniej
kwadrat_lista::[Int]->[Int]
kwadrat_lista [] = []
kwadrat_lista (x:xs)=(kwadrat x):(kwadrat_lista xs)
--xs moze byc zapisane jako t (ogon)    (x:t) tez jest okej

