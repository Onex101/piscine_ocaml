let ft_string_all : (char -> bool) -> string -> bool = fun f x ->
      let len = String.length x in
      let rec test i =
        if (i == len) then false
        else if (f (String.get x i) != true) then test (i + 1)
        else true in
      test (0)


let is_digit c = c >= '0' && c <= '9'

let (bool) : bool = ft_string_all is_digit "012356789";