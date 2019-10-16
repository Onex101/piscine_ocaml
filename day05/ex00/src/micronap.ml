let is_int s =
  try ignore (int_of_string s); true
  with _ -> false

let () =
    if (Array.length Sys.argv - 1) > 0 then
        begin
        if is_int (Sys.argv.(1)) then
            begin
                Unix.sleep (int_of_string Sys.argv.(1));
                ()
            end
        else
            ()
        end
    else
        ()