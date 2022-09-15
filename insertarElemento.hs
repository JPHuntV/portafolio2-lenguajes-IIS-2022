--Jean Hunt
--2018265223
--Portafolio 2
--insertarElemento: inserta un elemento en una lista ordenada




--E: lista -> una lista de enteros ordenada, elemento->elemento a insertar en la lista
--S: Lista con el elemnto insertado en su posición correspondiente para que la lista esté ordenada
--R: lista debe contener elementos de tipo entero y elemento debe ser de tipo entero
insertarElemento :: [Integer] -> Integer ->[Integer]
insertarElemento lista elemento =
    if lista == [] then
        [elemento]
    else
        insertarElementoAux (qsort lista) elemento


--E: lista -> una lista de enteros, elemento->elemento a insertar en la lista
--S: llamada a una funcion que inserta el elemento , envia la lista ordenada y el elemento
--R: lista debe contener elementos de tipo entero y elemento debe ser de tipo entero
insertarElementoAux :: [Integer] -> Integer ->[Integer]
insertarElementoAux lista elemento =
    if lista == [] then
        []
    else
        if head(lista) > elemento then
           [elemento] ++ [head lista] ++ tail lista
        else
            [head lista] ++ (insertarElementoAux (tail lista) (elemento))

--E: Una lista de elementos
--S: Lista ordenada de forma ascendente
--R: Los elementos de la lista deben ser del mismo tipo3
qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort [a | a <- xs, a < x]
                      ++ [x] ++
               qsort [b | b <- xs, b >= x]

--Eliminar el comentario de la linea y comentar la otra para probar distintos casos
main =  print(insertarElemento [424, 0, 140] 238)
--main =  print(insertarElemento [35, 69, 136, 428, 563] 53)
--main =  print(insertarElemento [234, 505, 39, 434, 110, 94, 177] 581)
--main =  print(insertarElemento [334, 100, 115, 409, 346, 822, 384, 153, 592, 930] 30)
--main =  print(insertarElemento [] 500)