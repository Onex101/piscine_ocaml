let ft_string_all : (char -> bool) -> string -> bool = fun f x ->
      let len = String.length x in
      let rec test i =
        if (i = len - 1 && f (String.get x i) = true) then true
        else if (f (String.get x i) != true) then false
        else test (i + 1) in
      test (0)


let is_digit c = c >= '0' && c <= '9'

let  () = if (ft_string_all is_digit "012356789a") then
                    print_string("true")
                    else
                    print_string("false")
