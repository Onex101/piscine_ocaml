let encode list =
    let rec aux count acc = function
      | [] -> []
      | [x] -> (count+1, x) :: acc
      | a :: (b :: _ as t) -> if a = b then aux (count + 1) acc t
                              else aux 0 ((count+1,a) :: acc) t in
    List.rev (aux 0 [] list)

let rec sum xs =
 match xs with
 | [] -> 0
 | h::t -> h + sum t

let rec print_tuples =
  function
  | [] -> ()
  | (a, b) :: rest ->
    Printf.printf "%i, %s; " a b;
    print_tuples rest

let lst = ["abc"; "def"; "ghi"]
let rec concat ss =
 match ss with
 | [] -> ""
 | s::ss' -> s ^ (concat ss')
let a_i = concat lst

let () = print_tuples (encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"]);
        print_string(a_i)