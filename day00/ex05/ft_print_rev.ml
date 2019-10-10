let ft_print_rev : string -> unit = fun x ->
      for len = String.length x downto 1 do
        print_char(String.get x (len - 1))
      done;
      print_char('\n')

let () =  ft_print_rev ("abc")