(*
Jean Hunt
2018265223
Portafolio 2
listaInverso: recibe una lista y la devuelve invertida
*)


(*
E:lista ->lista a invertir
S:lista invertida
R:lista debe ser de tipo List

Nota: Usando List.rev
*)
fun listaInverso lista =
    List.rev lista
;



(*
E:lista ->lista a invertir
S:lista invertida
R:lista debe ser de tipo List

Nota: Sin usar la función List.rev
*)
fun listaInverso2 lista = let
  val res = ref []
  val cont = ref 0
  val largo = List.length(lista)

in
  while !cont < largo do(
    res := [List.nth(lista, !cont)] @ !res;
    cont := !cont+1
  );
  res
end
;