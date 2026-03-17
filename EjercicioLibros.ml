(* 1. Definimos los alias de tipo *)
type titulo = string
type autor = string 

(* 2. Creamos el tipo de dato Libro *)
(* Nota: En OCaml usamos 'type' con constructores en mayúscula *)
type libro = Libro of titulo * autor * int 

(* 3 y 4. Implementamos la función con Pattern Matching *)
let descripcion (Libro(t, a, anio)) =
  if anio < 2000 then 
    "El libro '" ^ t ^ "' de " ^ a ^ " es una obra clásica."
  else 
    "El libro '" ^ t ^ "' de " ^ a ^ " es una obra moderna."

(* 5. Definimos el main con una lista de libros *)
let () =
  let lista_libros = [
    Libro("Cien años de soledad", "Gabriel García Márquez", 1967);
    Libro("Project Hail Mary", "Andy Weir", 2021);
    Libro("1984", "George Orwell", 1949)
  ] in

  (* Usamos List.iter para aplicar la función a cada elemento sin usar bucles manuales *)
  List.iter (fun l -> print_endline (descripcion l)) lista_libros