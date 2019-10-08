let ft_print_comb2 : unit -> unit = fun () ->
    for i = 0 to 9 do
        for j = 0 to 9 do
            for k = 0 to 9 do
                for m = j + 1 to 9 do
                    print_int(i);
                    print_int(j);
                    print_char(' ');
                    print_int(k);
                    print_int(m);
                    if (i + j + k + m = 35) then
                    print_string("\n")
                    else
                    print_string(", ")
                done
            done
        done
    done

let () =  ft_print_comb2 ()