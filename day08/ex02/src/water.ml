
class water  =
    object (self)
        inherit Molecule.molecule "water" [new Hydrogen.hydrogen; new Hydrogen.hydrogen; new Oxygen.oxygen]
        method _formula = self#encode_list
    end