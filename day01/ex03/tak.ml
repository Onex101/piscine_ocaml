let rec tak x y z =
    if (y < x) then
        tak (tak (x-1) (y) (z)) (tak (y-1) (z) (x)) (tak (z-1) (x) (y))
    else
        z

let () = print_int (tak 23498 98734 98776)
