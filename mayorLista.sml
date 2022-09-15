(*
Jean Hunt
2018265223
Portafolio 2
mayorLista: Recibe una lista, y retorna el elemento mayor de dicha lista
*)


(*
E:lista ->lista a recorrer
S:elemento mayor encontrado en lista
R:lista debe de ser de tipo int list
*)
fun mayorLista lista = let
    val cont = ref 0
    val res = ref (List.nth(lista,0))
    val largo = List.length(lista)
in
    while !cont < largo do (
        if (List.nth(lista, !cont)) >= !res then
            res := List.nth(lista, !cont)
        else ();
        cont := !cont+1
    );
    !res
end
;