
let alkane_name_list =
        [|"Methane";
        "Ethane";
        "Propane";
        "Butane";
        "Pentane";
        "Hexane";
        "Heptane";
        "Octane";
        "Nonane";
        "Decane";
        "Undecane";
        "Dodecane";|]

let alkane_list n = 
    let rec loop lst n m =
        match (n, m) with
        | 0 , 0 -> lst
        | 0 , _ -> loop ((new Hydrogen.hydrogen) :: lst) 0 (m-1)
        | n , m -> loop ((new Carbon.carbon) :: (new Hydrogen.hydrogen) :: lst) (n-1) (m-1) 
        in
    loop [] n (2*n+2)

class alkane (n:int) =
    object (self)
        inherit Molecule.molecule (Array.get alkane_name_list n) (alkane_list n)
        method _formula = self#encode_list
    end