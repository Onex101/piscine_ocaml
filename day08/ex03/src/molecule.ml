
class virtual molecule (name:string) (atom_list:Atom.atom list)=
    object (this)
        method _name = name
        method _atom_list = (this#sort_atom_list atom_list)
        method virtual _formula : string
        method to_string = "This molecule is " ^ this#_name ^ " it's chemical formula is " ^ this#_formula
        method equals (m:molecule) = if ((m#_name = this#_name) && (m#_formula = this#_formula)) then true else false
        method encode_list = let rec aux count acc = function
                            | [] -> ""
                            | [x] -> if count > 0 then  (acc ^ x#_symbol ^ (string_of_int (count+1)))else (acc ^ x#_symbol)
                            | a :: (b :: _ as t) -> if (a#equals b) then aux (count + 1) acc t
                                                    else if count > 0 then aux 0 (acc ^ a#_symbol ^ (string_of_int (count+1))) t
                                                    else aux 0 (acc ^ a#_symbol) t in
                            (aux 0 "" this#_atom_list)
        method print_atom_list = let rec loop =
                            function
                            | [] -> ()
                            | head :: tail ->
                                Printf.printf "%s " head#_symbol;
                                loop tail in
                            loop this#_atom_list
        method sort_atom_list (lst:(Atom.atom list)) = let compare_str s1 s2 =
                                                        if (s1#_symbol) = "C" && (s2#_symbol) = "H" then
                                                            -4
                                                        else if (s1#_symbol) = "H" && (s2#_symbol) = "C" then
                                                            4
                                                        else if (s1#_symbol) = "C" then
                                                            -2
                                                        else if (s1#_symbol) = "H" then
                                                            -3
                                                        else if (s1#_symbol) > (s2#_symbol) then 
                                                            1 
                                                        else if (s1#_symbol) < (s2#_symbol) then 
                                                            (-1) 
                                                        else 
                                                            0 in
                                List.sort compare_str lst
    end