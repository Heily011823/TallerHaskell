(* Ejercicio 3*)

type nombre = string
type nota = int

type resultado = { nombre: nombre; nota: nota }

let evaluar resultado =
  if resultado.nota >= 60 then
    "El estudiante " ^ resultado.nombre ^ " aprobó con una nota " ^ string_of_int resultado.nota
  else
    "El estudiante " ^ resultado.nombre ^ " reprobó con una nota " ^ string_of_int resultado.nota


let () =
  let resultado1 = { nombre = "Maria"; nota = 90 } in
  print_endline (evaluar resultado1);

  let resultado2 = { nombre = "Andres"; nota = 54 } in
  print_endline (evaluar resultado2);

  let resultado3 = { nombre = "Paula"; nota = 78 } in
  print_endline (evaluar resultado3)