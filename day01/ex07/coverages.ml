let rec coverages f x n =
	if n < 0 then
		false
	else if x = f x then
		true
	else
		coverages f (f x) (n - 1)
    
let () = if (coverages (( * ) 2) 2 5) then
            print_string "true"
        else
            print_string "false"