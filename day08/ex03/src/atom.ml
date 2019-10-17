class virtual atom =
    object (this)
        method virtual _name : string
        method virtual _symbol : string
        method virtual _atomic_number : int 
        method to_string = "This atom is " ^ this#_name ^ " it's symbol is " ^ this#_symbol ^ " and it has an atomic weight of " ^ (string_of_int this#_atomic_number)
        method equals (a:atom) = if ((a#get_name = this#_name) && (a#get_symbol = this#_symbol) && (a#get_atomic_number = this#_atomic_number)) then true else false
        method get_name = this#_name
        method get_symbol = this#_symbol
        method get_atomic_number = this#_atomic_number
    end