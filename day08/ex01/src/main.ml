let () = 
    let water = new Water.water in
    let sugar = new Glucose.glucose in
    let alchol = new Ethanol.ethanol in
    let salt = new Salt.salt in
    let soda = new Caustic_soda.caustic_soda in

    print_endline water#to_string;
    print_endline sugar#to_string;
    print_endline alchol#to_string;
    print_endline salt#to_string;
    print_endline soda#to_string;
    ()