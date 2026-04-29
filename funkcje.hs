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
