let repeat_string ?str:(str="x") n =
    let ret = "" in

    let rec concat s i =
        if (i < 0) then
            "Error"
        else if (i = 0) then
            s ^ ""
        else                
            concat (s ^ str) (i - 1) in
    if (n = 0) then
        " \n"
    else
        (concat ret n) ^ "\n"

let () = print_string(repeat_string 0);
            print_string(repeat_string ~str:"a" 5);
            print_string(repeat_string ~str:"what" 3);
            print_string(repeat_string 2)