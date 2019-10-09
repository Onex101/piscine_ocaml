let ft_sum fn a b =
  let rec aux i r =
    if i > b then r
    else aux (succ i) (r +. fn i)
  in
  aux a 0.

let () = print_float(ft_sum (fun i -> float_of_int (i * i)) 1 10);
         print_char('\n')