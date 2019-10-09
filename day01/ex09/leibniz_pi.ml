let rec leibniz_pi = 
    let rec aux i r =
    if i > b then r
    else aux (succ i) (r +. fn i)
  in
  aux a 0.
3.14159265359