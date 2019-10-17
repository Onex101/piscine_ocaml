let () = 
        let oxy = new Oxygen.oxygen in
        let c = new Carbon.carbon in
        let cl = new Chlorine.chlorine in
        let f = new Fluorine.fluorine in
        let h = new Hydrogen.hydrogen in
        let na = new Sodium.sodium in
        print_endline oxy#to_string;
        print_endline c#to_string;
        print_endline cl#to_string;
        print_endline f#to_string;
        print_endline h#to_string;
        print_endline na#to_string;
    ()