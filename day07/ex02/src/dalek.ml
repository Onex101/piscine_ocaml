class dalek =
    let getdalekName () = let rand_chr = (Char.chr (97 + (Random.int 26))) in 
                          "Dalek" ^ (Char.escaped rand_chr) ^ (Char.escaped rand_chr) ^ (Char.escaped rand_chr) in
    object (self)
        initializer Random.self_init ()
        inherit People.people (getdalekName ())
        val mutable _shield:bool = true
        
        method! talk = let s = match (Random.int 4) with
                            | 0 -> "Explain! Explain!"
                            | 1 -> "Exterminate! Exterminate!"
                            | 2 -> "I obey!"
                            | 3 -> "You are the Doctor! You are the enemy of the Daleks!"
                            | _ -> "" in print_endline s
        method exterminate (target:People.people) = target#die; _shield <- (not _shield)
        method get_shield_status = _shield
        method! die = print_string "Emergency Temporal Shift!\n"
    end