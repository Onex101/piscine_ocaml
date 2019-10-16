let x = [| "The Ocaml Bootcamp\n"; "You\n"; "Knock Knock, Wow someone came to visit\n"; "Knock Knock, No one was at the door\n"; "Knock Knock, feels bad man\n" |]

let read_file filename = 
    let lines = ref [] in
    let chan = open_in filename in
    try
    while true; do
        lines := input_line chan :: !lines
    done; !lines
    with End_of_file ->
    close_in chan;
    List.rev !lines

let () =
    if (Array.length Sys.argv - 1) > 0 && (Sys.argv.(1)) = "src/jokes.txt" then
        begin
            let l = read_file (Sys.argv.(1)) in
            let arr = Array.of_list l in
            Random.self_init ();
            print_string arr.(Random.int (Array.length arr));
            ()
        end
    else
        ()