(*
Jean Hunt
2018265223
Portafolio 2
Factorial: Recibe un numero n y retorna su factorial
*)

(*
E: n-> Número a calcular el factorial
S: Factorial de n
R: n debe ser un valor numerico
*)
fun factorial n =
    if n = 0 
        then 1
    else 
        n * factorial (n-1)
;