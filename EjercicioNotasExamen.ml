(* Ejercicio 3*)

type nombre = string
type nota = int

type resultado = { nombre: nombre; nota: nota }

let evaluar r =
  if r.nota >= 60 then
    "El estudiante " ^ r.nombre ^ " aprobó con una nota " ^ string_of_int r.nota
  else
    "El estudiante " ^ r.nombre ^ " reprobó con una nota " ^ string_of_int r.nota


let () =
  let resultado1 = { nombre = "Maria"; nota = 90 } in
  print_endline (evaluar resultado1);

  let resultado2 = { nombre = "Andres"; nota = 54 } in
  print_endline (evaluar resultado2);

  let resultado3 = { nombre = "Paula"; nota = 78 } in
  print_endline (evaluar resultado3)