let rec ft_power : int -> int -> int = fun x y ->
                            if y = 0 then
                              1
                            else if x = 0 then
                              0
                            else
                              x * ft_power (x) (y - 1)

let () =  print_int(ft_power 2 3);
          print_char('\n');
          print_int(ft_power 0 (-3));
          print_char('\n');
          print_int(ft_power 2 0);
          print_char('\n')