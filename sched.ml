(* https://github.com/ocaml-multicore/effects-examples/blob/master/sched.ml *)
effect Fork  : (unit -> unit) -> unit
effect Yield : unit

let fork f = perform (Fork f)
let yield () = perform Yield

(* A concurrent round-robin scheduler *)
let run main =
  let run_q = Queue.create () in
  let enqueue k = Queue.push k run_q in
  let dequeue () =
    if Queue.is_empty run_q then ()
    else continue (Queue.pop run_q) ()
  in
  let rec spawn f =
    match f () with
    | () -> dequeue ()
    | effect Yield k ->
        ( enqueue k; dequeue () )
    | effect (Fork f) k ->
        ( enqueue k; spawn f )
  in
  spawn main

let first () = 
  print_endline "Hello";
  yield ();
  print_endline "Goodbye"

let second () =
  print_endline "Namaste";
  yield ();
  print_endline "Adios"

let main () =
  fork first;
  fork second

let _ =
  run main