let ft_print_alphabet : unit -> unit = fun () ->
                          for x = int_of_char('a') to int_of_char('z') do
                            print_char(char_of_int(x))
                          done;
                          print_char('\n')

let () =  ft_print_alphabet ()