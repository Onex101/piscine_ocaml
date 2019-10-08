let power l = l * l

let iter : (int -> int) -> int -> int -> int = fun f x n ->
    let rec loop x n = 
        if n = 0 then
            x
        else
            let t = f(x)
            loop f(x) (n-1) in
    loop(x n)
    
(* let () = print_int(power 2 4); *)
