--Jean Hunt
--2018265223
--Portafolio 2
--rango: calcula el rango de una lista



--E: lista-> lista a calcular el rango
--S: llamada a función que calcula el rango, envia la lista ordenada
--R: Lista debe contened elementos de tipo entero
rango :: [Integer] -> [Integer]
rango lista = 
    if lista == [] then
        []
    else
        rangoAux(qsort lista)

--E: lista->lista a calcular el rango
--S: lista con el rango de lista
--R: lista debe estar ordenada para dar resultados certeros
rangoAux :: [Integer] ->[Integer]
rangoAux lista = 
    [head lista] ++ [last lista]

--E: Una lista de elementos
--S: Lista ordenada de forma ascendente
--R: Los elementos de la lista deben ser del mismo tipo3
qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort [a | a <- xs, a < x]
                      ++ [x] ++
               qsort [b | b <- xs, b >= x]

--Eliminar el comentario de la linea y comentar la otra para probar distintos casos
main =  print(rango [424, 0, 140])
--main =  print(rango [35, 69, 136, 428, 563])
--main =  print(rango [234, 505, 39, 434, 110, 94, 177])
--main =  print(rango [334, 100, 115, 409, 346, 822, 384, 153, 592, 930])
--main =  print(rango [])