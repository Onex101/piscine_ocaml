
type 'a ft_ref = {mutable c: 'a}

let return t = {c = t}

let get t = t.c

let set t a = t.c <- a

let bind t f : 'b ft_ref = f (get t)

let () =
    print_string "Return Test and Get Test : ";
    let test = return 42 in
    print_int (get test);
    print_char '\n';
    print_string "Bind Test with int ot char function : ";
    let y = bind test (fun x -> return (string_of_int(get test))) in
    print_string (get y);
    print_char '\n';
    print_string "Check what original value is: ";
    print_int (get test);
    print_char '\n';
    print_string "Set Test setting to another value : ";
    set test 21;
    print_int (get test);
    print_char '\n';