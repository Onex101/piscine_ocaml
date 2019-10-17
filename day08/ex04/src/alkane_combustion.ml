let sort_molecule_list (lst:(Molecule.molecule list)) = let compare_str s1 s2 =
                                                        if (s1#_formula) = (s2#_formula) then 
                                                            0
                                                        else if (s1#_formula) > (s2#_formula) then 
                                                            (1)
                                                        else if (s1#_formula) < (s2#_formula) then 
                                                            (-1)
                                                        else 
                                                            0 in
                                List.sort (compare_str lst)

let encode list =
    let rec aux count acc = function
      | [] -> []
      | [x] -> (x, count+1) :: acc
      | a :: (b :: _ as t) -> if (a#equals b) then aux (count + 1) acc t
                              else aux 0 ((a,count+1) :: acc) t in
    List.rev (aux 0 [] list)

let 

class alkane_combustion (molLst:Molecule.molecule list) = 
    object
        inherit reaction
        method lst = sort_molecule_list molLst
        method get_start = (Molecule.molecule * int) list
        method get_result: (Molecule.molecule * int) list
        method balance: reaction
        method is_balanced: bool
    end