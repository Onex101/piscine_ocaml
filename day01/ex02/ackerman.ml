let rec ackerman : int -> int -> int = fun m n ->
    if (m = 0) then
        n + 1
    else if (m > 0 && n = 0) then
        ackerman (m - 1) 1
    else if (m > 0 && n > 0) then
        ackerman (m-1) (ackerman m (n-1))
    else
        (-1)

let () = print_int (ackerman 4 1)