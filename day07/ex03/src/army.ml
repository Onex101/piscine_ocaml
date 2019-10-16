class ['a] army (lst:'a list) =
    object
        val mutable lst = lst
        method add a = lst <- a :: lst
        method delete = match lst with
                | [] -> lst <- []
                | head::tail -> lst <- tail
        method print =
                    let rec loop l = 
                        match l with
                        | [] -> ()
                        | head::tail -> print_string head#to_string; 
                                        loop tail
                    in
                    loop lst;
    end