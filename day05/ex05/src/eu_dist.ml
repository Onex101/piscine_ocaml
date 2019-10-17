let eu_dist (a:float array) (b:float array) =
    let sizea = (Array.length a) in
    let sizeb = (Array.length b) in
    let rec loop (acc:float) i =
        if i >= sizea || i >= sizeb then
            sqrt(acc)
        else
            loop (acc +. ((a.(i) -. b.(i)) ** 2.)) (i + 1)
    in
    loop 0. 0

    let () =
        print_float (eu_dist [|1.; 2.; 3.; 4.; 5.; 6.; 7.; 8.|] [|8.; 9.; 10.; 1.; 11.;|]);
        ()