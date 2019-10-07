let rec ft_countdown : int -> unit = fun i ->
                            if i <= 0 then
                                begin
                                    print_int(0);
                                    print_char('\n');
                                end
                            else
                                begin
                                    print_int(i);
                                    print_char('\n');
                                    ft_countdown (i - 1)
                                end

let main = ft_countdown (-1);
ft_countdown (2);
ft_countdown (31)

let () = main;;