let () = 
    let person = new People.people ("Xeno") in
    print_string person#to_string;
    person#talk;
    print_string person#die;
    let doctor = new Doctor.doctor "Who" 42 person in
    doctor#talk;
    doctor#travel_in_time 12 12;
    doctor#use_sonic_screwdriver;
    (* doctor#regenerate; *)
    ()