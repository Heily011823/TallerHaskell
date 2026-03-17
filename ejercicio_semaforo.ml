type semaforo = Rojo | Amarillo | Verde

let accion s =
  match s with
  | Rojo -> "Detente"
  | Amarillo -> "Precaucion"
  | Verde -> "Avanza"

let cambiar s =
  match s with
  | Rojo -> Amarillo
  | Amarillo -> Verde
  | Verde -> Rojo

let string_of_semaforo s =
  match s with
  | Rojo -> "Rojo"
  | Amarillo -> "Amarillo"
  | Verde -> "Verde"

(* Tiempo diferente para cada color *)
let tiempo s =
  match s with
  | Rojo -> 3      (* 3 segundos *)
  | Amarillo -> 1  (* 1 segundo *)
  | Verde -> 2     (* 2 segundos *)

let rec simular s veces =
  if veces = 0 then ()
  else (
    print_endline ("Estado: " ^ string_of_semaforo s);
    print_endline ("Accion: " ^ accion s);
    print_endline "-------------------";

    Unix.sleep (tiempo s);  (* espera segun el color *)

    simular (cambiar s) (veces - 1)
  )

let () =
  simular Rojo 6