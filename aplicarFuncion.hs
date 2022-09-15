--Jean Hunt
--2018265223
--Portafolio 2
--aplicarFuncion: Recibe una función y una lista y aplica esa función a los elementos de la lista





--E: f-> Función a aplicar sobre lista, lista->lista sobre la que se aplicará f
--S: lista con f aplicada a cada uno de sus elementos
--R: Las funciones ingresadas deben ser consecuentes con los elementos de la lista
--no se puede aplicar una función de factorial a una lista de caracteres por ejemplo
aplicarFuncion :: Eq a =>(a->b)->[a]->[b]
aplicarFuncion f lista = 
    if lista == [] then
        []
    else
        [f (head lista)] ++ (aplicarFuncion (f) (tail lista))



--esta función es unicamente para demostración del funcionamiento de "aplicarFunción"
-- y no afecta en lo absoluto al funcionamiento de la misma además de no formar parte 
--de la evaluación del ejercicio presentado sino de un ejercicio anterior
imparNegativo :: Integer -> Integer
imparNegativo n = 
    do
        if odd n 
            then (-1*n)
        else n

--Eliminar el comentario de la linea y comentar la otra para probar distintos casos
main = print (aplicarFuncion (reverse) ["abc","cda","1234"])
--main = print (aplicarFuncion (abs) [-1,-3,4,-12])
--main = print (aplicarFuncion (recip . negate) [1,4,-5,0.1])
--main = print (aplicarFuncion (3*) [1,2,3,4])
--main = print (aplicarFuncion (imparNegativo) [1,2,3,4])

