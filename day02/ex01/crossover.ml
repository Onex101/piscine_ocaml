let rec crossover l1 l2 =
	let rec contains i l = match l with
		| [] -> false
		| h::t -> if i = h then true else contains i t
	in
	match l1 with
		| [] -> []
		| h::t -> if (contains h l2) then h::(crossover t l2) else crossover t l2

let rec print_list =
  function
  | [] -> ()
  | h :: t -> Printf.printf "%i; " h;
    print_list t

let () = print_list (crossover [1; 2; 3;] [5; 4; 3; 3])