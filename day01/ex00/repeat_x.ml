let repeat_x : int -> string = fun n ->
    let ret = "" in

    let rec concat s i =
        if (i < 0) then
            s ^ "Error"
        else if (i = 0) then
            s
        else                
            concat (s ^ "x") (i - 1) in

    (concat ret n) ^ "\n"

let () = print_string(repeat_x (-1))