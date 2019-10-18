let () = 
    let alkane1 = new Alkane.alkane 1 in
    let alkane2 = new Alkane.alkane 2 in
    let alkane3 = new Alkane.alkane 3 in
    let alkane4 = new Alkane.alkane 4 in
    let alkane5 = new Alkane.alkane 5 in
    let alkane6 = new Alkane.alkane 6 in
    let alkane7 = new Alkane.alkane 7 in
    let alkane8 = new Alkane.alkane 8 in
    let alkane9 = new Alkane.alkane 9 in
    
    let ac = new Alkane_combustion.alkane_combustion [new Alkane.alkane 9; new Alkane.alkane 2; new Alkane.alkane 5; new Alkane.alkane 2; new Alkane.alkane 2; new Alkane.alkane 9; new Alkane.alkane 5;] in
    ac#print;
    ()