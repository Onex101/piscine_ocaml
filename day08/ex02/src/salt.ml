class salt  =
    object (self)
        inherit Molecule.molecule "salt" [new Sodium.sodium; new Chlorine.chlorine]
        method _formula = self#encode_list
    end