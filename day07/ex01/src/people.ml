class people name =
    object
        val _name:string = name
        val mutable _hp:int = 100

        method to_string = _name ^ " has " ^ (string_of_int _hp) ^ " hp left\n"
        method talk =  print_string ("I’m "^_name^"! Do you know the Doctor?\n")
        method die = "Aaaarghh!\n"
        initializer print_string ("Yes, it is I, " ^ _name ^ "\n")
    end