let gray n = 
    let rec loop f n p b =
        if n <= 0 then
            Printf.printf "%s; " p
        else if b then
            begin
                loop f (n-1) (p ^ "0") true;
                loop f (n-1) (p ^ "1") false
            end
        else
            begin
                loop f (n-1) (p ^ "1") true;
                loop f (n-1) (p ^ "0") false
            end in
    loop [] n "" true

let rec print_list =
  function
  | [] -> ()
  | h :: t -> Printf.printf "%s; " h;
    print_list t

let () = gray (-1);
        print_char('\n');
gray 2;
print_char('\n');
gray 3;
print_char('\n');
gray 4