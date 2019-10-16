class virtual atom =
    object (self)
        val virtual _name : string
        val virtual _symbol : string
        val virtual _atomic_number : int 
        method virtual to_string : string
        method virtual equals : atom -> bool
        method virtual get_name : string
        method virtual get_symbol : string
        method virtual get_atomic_number : int
    end