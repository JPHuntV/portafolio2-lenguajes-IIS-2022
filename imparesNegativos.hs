--Jean Hunt
--2018265223
--Portafolio 2
--imparesNegativos: Recibe una lista de enteros y remplaza los valores impares por su valor negativo


--E: Lista->una lista de enteros
--S: La lista con todos sus impares remplazados por su valor negativo
--R: Lista debe ser de tipo Integer
recorrerLista :: [Integer] -> [Integer]
recorrerLista lista = do map imparNegativo lista


--E: n-> un numero entero
--S: Si es impar remplaza n por su valor negativo
--R: n debe ser de tipo Integer
imparNegativo :: Integer -> Integer
imparNegativo n = 
    do
        if odd n 
            then (-1*n)
        else n

--Eliminar el comentario de la linea y comentar la otra para probar distintos casos

main = print(recorrerLista[333, 487, 539, 624, 153])
--main = print(recorrerLista[23, 313, 168, 249, 230, 874, 665, 847, 259, 998])
--main = print(recorrerLista[976, 691, 220, 982, 451, 38, 482, 757])
--main = print(recorrerLista[945, 728, 517, 910, 613, 429, 936, 624, 83, 57, 97, 819, 75, 142])
--main = print(recorrerLista[412, 403, 821, 209, 328, 154, 676, 612])