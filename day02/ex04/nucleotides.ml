type phosphate = string
type deoxyribose = string
type nucleobase = A 
                | T 
                | C 
                | G 
                | None

type nucleotide = {
                    p : phosphate;
                    d : deoxyribose;
                    n : nucleobase
}

let generate_nucleotide nucleobase = match nucleobase with
    | 'A' -> { p = "phosphate"; d= "deoxyribose"; n = A}
    | 'T' -> { p = "phosphate"; d= "deoxyribose"; n = T}
    | 'C' -> { p = "phosphate"; d= "deoxyribose"; n = C}
    | 'G' -> { p = "phosphate"; d= "deoxyribose"; n = G}
    | _ -> { p = "phosphate"; d= "deoxyribose"; n = None}

let get_nucleotide_phosphate n =
    n.p
let get_nucleotide_deoxyribose n =
    n.d
let get_nucleotide_nucleobase n =
    if (n.n = A) then
    print_string "A"
    else
    print_string "Not A"

let () = print_string (get_nucleotide_phosphate (generate_nucleotide 'A'));
        print_string("\n");
        get_nucleotide_nucleobase (generate_nucleotide 'A')