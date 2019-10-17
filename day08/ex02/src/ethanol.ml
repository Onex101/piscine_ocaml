class ethanol  =
    object (self)
        inherit Molecule.molecule "ethanol" [ new Oxygen.oxygen; 
                                                new Carbon.carbon; 
                                                new Carbon.carbon;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;]
        method _formula = self#encode_list
    end