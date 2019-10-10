let rev =
  let rec rev_append acc l =
    match l with
      [] -> acc
    | h::t -> rev_append (h::acc) t in
  fun l -> rev_append [] l;;

let encode list =
    let rec aux count acc = function
      | [] -> []
      | [x] -> (count+1, x) :: acc
      | a :: (b :: _ as t) -> if a = b then aux (count + 1) acc t
                              else aux 0 ((count+1,a) :: acc) t in
    rev (aux 0 [] list)

let flatten_tuple_list list =
  let rec loop s l= 
  match l with 
  | [] -> s
  | (a, b) :: rest ->
    loop (s@[(string_of_int (a)); b]) rest in
  loop [] list

let rec print_list =
  function
  | [] -> ()
  | h :: t -> Printf.printf "%s" h;
    print_list t

let sequence n =
    let rec loop i list = 
        if i = 0 then
            print_list(list)
        else 
            loop (i-1) (flatten_tuple_list(encode list))
    in
    if n < 0 then
        ()
    else
        loop n ["1"]


let () = sequence (-1);print_char('\n');
        sequence 1;print_char('\n');
        sequence 2;print_char('\n');
        sequence 3;print_char('\n');
        sequence 4;print_char('\n');
        sequence 5;print_char('\n');
        sequence 6

