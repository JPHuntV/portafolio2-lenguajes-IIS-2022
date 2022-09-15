(*
Jean Hunt
2018265223
Portafolio 2
contarRepeticiones: Cuenta la cantidad de veces que ser repite un elemento dentro de una lista
*)



(*
E:lista ->una lista a recorrer, elemento ->elemento a contar repeticiones
S:cantidad de veces que se repite elemento en lista
R:lista debe contener elementos del mismo tipo de elemento 
    es decir, si elemento es int, lista debe ser int list
    si elemento es string, lista debe ser string list
*)

fun contarRepeticiones (lista, elemento) = let
    val cont = ref 0
    val res = ref 0
    val largo = List.length(lista)
in
    while !cont < largo do (
        if (List.nth(lista, !cont)) = elemento then
            res := !res+1
        else ();
        cont := !cont+1
    );
    !res
end
;