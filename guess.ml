let game (answer : int) : int =
  let count = ref 0 in 

  let rec play () =
    print_string "Guess a number: ";
    let guess = read_int () in
    count := !count + 1;
    match compare guess answer with
    | -1 ->
      print_endline "Too Low";
      play ()
    | 1 ->
      print_endline "Too High";
      play ()
    | _ (* 0 *) -> 
      print_endline "Correct";
      !count
  in play ()
        
let main = 
  Random.self_init ();
  let answer = Random.int 100 in
  let guesses = game answer in
  print_endline ("It look " ^ (string_of_int guesses) ^ " tries.")