--Jean Hunt
--2018265223
--Portafolio 2
--extremosLista: Recibe una lista y retorna una lista con los extremos de la primera lista


--E: lista -> una lista
--S: Una lista con los extremos de lista
--R: la lista no debe estar vacia, todos los elementos de lista deben ser del mismo tipo
extremosLista :: Eq a => [a] -> [a]
extremosLista [] = []
extremosLista lista =
    [head lista] ++ [last lista]

--Eliminar el comentario de la linea y comentar la otra para probar distintos casos
main = print(extremosLista [1,2,3,4,5])
--main = print(extremosLista ["abc","cda","1234"])
--main = print(extremosLista []) fallo
