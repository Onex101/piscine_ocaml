let fibonacci n =
    let rec loop i j k =
        if (i <= 0) then
            k
        else
            loop (i - 1) (j + k) (j) in
    loop n 1 0

let () = print_int(fibonacci (-1));
        print_char('\n');
        print_int(fibonacci 2);
        print_char('\n'); 
        print_int(fibonacci 3);
        print_char('\n');
        print_int(fibonacci 4);
        print_char('\n');
        print_int(fibonacci 5);
        print_char('\n');
        print_int(fibonacci 6);
        print_char('\n');