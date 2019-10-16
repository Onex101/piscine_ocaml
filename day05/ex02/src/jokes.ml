let x = [| "The Ocaml Bootcamp\n"; "You\n"; "Knock Knock, Wow someone came to visit\n"; "Knock Knock, No one was at the door\n"; "Knock Knock, feels bad man\n" |]

let () =
    Random.self_init ();
    print_string x.(Random.int 5)