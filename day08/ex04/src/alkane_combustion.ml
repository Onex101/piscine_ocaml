let encode list =
    let rec aux count acc = function
      | [] -> []
      | [x] -> (x, count+1) :: acc
      | a :: (b :: _ as t) -> if (a#equals b) then aux (count + 1) acc t
                              else aux 0 ((a,count+1) :: acc) t in
    List.rev (aux 0 [] list)

let rec print_tuples =
  function
  | [] -> ()
  | (a, b) :: rest ->
    Printf.printf "%s, %i; " a#to_string b;
    print_tuples rest


class alkane_combustion (molLst:(Molecule.molecule list)) = 
    object (this)
        (* inherit reaction *)
        method lst = this#sort_molecule_list
        method get_start = encode this#lst
        method get_result = encode this#lst
        method balance = true
        method is_balanced = false
        method sort_molecule_list = let compare_str s1 s2 =
                                        if (s1#equals s2) then 
                                            0
                                        else if (s1#_formula) > (s2#_formula) then 
                                            1
                                        else
                                            -1
                                    in
                                    List.sort compare_str molLst
        method print = print_tuples this#get_start
    end