(*
Jean Hunt
2018265223
Portafolio 2
listaNumeros: Recibe un numero n y retorna una lista de numeros menores o igual a n
*)



(*
E: n-> numero limite de la lista
S: una lista de numeros menores o igual a n
R: n debe ser un valor numerico
*)

fun listaNumeros (n) = let 
    val cont = ref 0
    val res = ref []
    in
        while !cont <= n do (
            res := !res @ [!cont];
            cont := !cont+1
        );
        !res
    end
;


