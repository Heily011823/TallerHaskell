(* Ejercicio 3: Diseña un programa que modele el resultado de un examen de un estudiante. *)

type nombre = string
type nota = int

type resultado = Resultado of nombre * nota

let evaluar resultado =
  match resultado with
  | Resultado (nombre, nota) ->
      if nota >= 60 then
        Printf.sprintf "El estudiante %s aprobó con una nota %d" nombre nota
      else
        Printf.sprintf "El estudiante %s reprobó con una nota %d" nombre nota


let () =
  let resultado1 = Resultado ("Maria", 90) in
  print_endline (evaluar resultado1);

  let resultado2 = Resultado ("Andres", 54)  in
  print_endline (evaluar resultado2);

  let resultado3 = Resultado ("Paula", 78) in
  print_endline (evaluar resultado3)