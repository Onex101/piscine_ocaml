let () = 
    let person1 = new People.people ("Xeno") in
    let person2 = new People.people ("Talon") in
    let person3 = new People.people ("Sam") in

    let doctor1 = new Doctor.doctor "Who1" 42 person1 in
    let doctor2 = new Doctor.doctor "Who2" 42 person2 in
    let doctor3 = new Doctor.doctor "Who3" 42 person3 in

    let dalek1 = new Dalek.dalek in

    let pArmy = new Army.army [] in
    let doArmy = new Army.army [] in
    let daArmy = new Army.army [] in

    pArmy#add person1;
    pArmy#add person2;
    pArmy#add person3;

    doArmy#add doctor1;
    doArmy#add doctor2;
    doArmy#add doctor3;

    daArmy#add dalek1;
    daArmy#add dalek1;
    daArmy#add dalek1;

    pArmy#print;
    doArmy#print;
    daArmy#print;
    ()