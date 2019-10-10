let rot_one c =
    if (c < 'a' && c < 'A') || (c > 'Z' && c > 'z') then
        c
    else if c = 'z' || c = 'Z' then
        char_of_int ((int_of_char c) - 25)
    else
        char_of_int ((int_of_char c) + 1)

let rec ft_rot_n : int -> string -> string = fun n s ->
    if n > 0 then
        begin
            let s2 = String.map rot_one s in 
            ft_rot_n (n - 1) s2
        end
    else
        s

let rot42 s = 
    ft_rot_n 42 s

let caeser s n =
    ft_rot_n n s

let xor s k  = 

let () = print_string(rot42 "abcdefghijklmnopqrstuvwxyz")