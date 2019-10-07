let rec ft_power : int -> int -> int = fun x y ->
                            let i = ref x;
                            let j = ref y;
                            if y = 0 then
                              1
                            else if x = 0 then
                              0
                            else
                                while j > 0 do
                                  i := i * x;
                                  j := j - 1
                                done