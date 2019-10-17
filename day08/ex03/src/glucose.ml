class glucose  =
    object (self)
        inherit Molecule.molecule "glucose" [new Oxygen.oxygen; 
                                                new Oxygen.oxygen; 
                                                new Oxygen.oxygen; 
                                                new Oxygen.oxygen; 
                                                new Oxygen.oxygen; 
                                                new Oxygen.oxygen; 
                                                new Carbon.carbon; 
                                                new Carbon.carbon;  
                                                new Carbon.carbon;  
                                                new Carbon.carbon;  
                                                new Carbon.carbon;  
                                                new Carbon.carbon; 
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;
                                                new Hydrogen.hydrogen;]
        method _formula = self#encode_list
    end