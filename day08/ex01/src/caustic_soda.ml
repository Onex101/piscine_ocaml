class caustic_soda  =
    object (self)
        inherit Molecule.molecule "caustic soda" [ new Oxygen.oxygen; 
                                                    new Sodium.sodium;
                                                new Hydrogen.hydrogen;]
        method _formula = self#encode_list
    end