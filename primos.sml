(*
Jean Hunt
2018265223
Portafolio 2
Primos: Recibe un numero en indica si este es o no primo 
*)


(*
E:n->numero, d->divisor, r->almacena la respuesta
S: True si n es primo, False si no 
R:n d y r deben ser numericos
*)
fun primoAux (n, d, r) = 
    if n = d
        then r = 1
    else
        if n mod d = 0
            then primoAux(n, d+1, r+1)
        else primoAux(n, d+1, r)
;

(*
E:Numero a determinar si es primo
S:Llamada a la funcion que determina si es primo 
R:N debe ser numerico
*)
fun primo n = 
    primoAux(n,1,0)
;