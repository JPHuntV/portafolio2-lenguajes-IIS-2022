--Jean Hunt
--2018265223
--Portafolio 2
--contarComas: cuenta la cantidad de comas que hay en una cadena de texto



--E:s-> candena a contar las comas, cont-> contador de comas
--S:cantidad de comas en la cadena s
--R:s debe ser una cadena de texto, es decir [Char]
contarComasAux :: [Char] -> Integer -> Integer
contarComasAux s cont =
    if s == "" then
        cont
    else
        if head s == head "," then
            contarComasAux(tail s) (cont+1)
        else
            contarComasAux(tail s) (cont)

--E: s->cadena de texto a contar comas
--S: 0 si la cadena está vacia, llamada a contarComasAux si no 
--R: s debe ser una cadena de texto, es decir: [Char]
contarComas :: [Char]->Integer
contarComas s = 
    if s == "" then
        0
    else
        contarComasAux s 0


--Eliminar el comentario de la linea y comentar la otra para probar distintos casos
main =  print( contarComas ("Hola,a,todo,el,mundo,como,estan"))
--main =  print( contarComas ("E,ste,ejemp,lo,n,o,tie,ne,sen,t,i,do"))
--main =  print( contarComas (",,,,,,"))