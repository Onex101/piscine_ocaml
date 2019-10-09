let ft_is_palindrome : string -> bool = fun x ->
  let len = String.length x in
    
  let rec test i j =
    if (i >= (len) || j < 0) then true
    else if (i = j) then true
    else if (String.get x i != String.get x j) then false
    else test (i + 1) (j - 1) in

  test 0 (len-1)

let () = if (ft_is_palindrome "racecar") then
        print_string("true")
        else
        print_string("false")