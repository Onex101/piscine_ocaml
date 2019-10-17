class virtual atom =
    object (this)
        val virtual _name : string
        val virtual _symbol : string
        val virtual _atomic_number : int 
        method to_string = "This atom is " ^ _name ^ " it's symbol is " ^ _symbol ^ " and it has an atomic weight of " ^ (string_of_int _atomic_number)
        method equals (a:atom) = if ((a#get_name = _name) && (a#get_symbol = _symbol) && (a#get_atomic_number = _atomic_number)) then true else false
        method get_name = _name
        method get_symbol = _symbol
        method get_atomic_number = _atomic_number
    end