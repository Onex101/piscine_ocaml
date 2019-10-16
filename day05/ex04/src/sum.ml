
let sum : float -> float -> float = fun x y ->
    x +. y
    

let () =
    print_endline (string_of_float (sum 1.0 2.1))