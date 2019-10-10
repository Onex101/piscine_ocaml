type phosphate = string
type deoxyribose = string
type nucleobase = A | T | C | G | U | None

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
    | 'U' -> { p = "phosphate"; d= "deoxyribose"; n = U}
    | _ -> { p = "phosphate"; d= "deoxyribose"; n = None}

let random_element arr =
    let n = Random.int (Array.length arr) in
    Array.get arr n

type helix = List of nucleotide
type rna = List of nucleotide

let generate_helix n = 
    let rec loop i l=
        if (i = 0) then
            l
        else
            loop (i-1) ((generate_nucleotide(random_element ([|'A'; 'T'; 'C'; 'G'|])))::l) in
    loop n []

    
let rec helix_to_string h =
    match h with
    | [] -> ""
    | h::t -> if (h.n = A) then
                "A" ^ helix_to_string t
              else if (h.n = T) then
                "T" ^ helix_to_string t
              else if (h.n = C) then
                "C" ^ helix_to_string t
              else
                "G" ^ helix_to_string t

let rev =
  let rec rev_append acc l =
    match l with
      [] -> acc
    | h::t -> rev_append (h::acc) t in
  fun l -> rev_append [] l;;

let complementary_helix h = 
    let rec loop l1 l2 =
        match l1 with
        | [] -> l2
        | h::t -> if (h.n = A) then
                    loop t ((generate_nucleotide 'T')::l2)
                else if (h.n = T) then
                    loop t ((generate_nucleotide 'A')::l2)
                else if (h.n = C) then
                    loop t ((generate_nucleotide 'G')::l2)
                else
                    loop t ((generate_nucleotide 'C')::l2) in
    rev (loop h [])

let generate_rna h = 
    let rec loop l1 l2 =
        match l1 with
        | [] -> l2
        | h::t -> if (h.n = A) then
                    loop t ((generate_nucleotide 'T')::l2)
                else if (h.n = T) then
                    loop t ((generate_nucleotide 'U')::l2)
                else if (h.n = C) then
                    loop t ((generate_nucleotide 'G')::l2)
                else
                    loop t ((generate_nucleotide 'C')::l2) in
    rev (loop h [])

let () = 
    let h1 = generate_helix 10 in
    let h2 = complementary_helix h1 in
    print_string (helix_to_string h1);
    print_char ('\n');
    print_string (helix_to_string h2)