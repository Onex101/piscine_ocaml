let () = 
    let person = new People.people ("Xeno") in
    print_string person#to_string;
    person#talk;
    print_string person#die;
    ()