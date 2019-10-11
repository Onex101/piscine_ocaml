type t = Spade | Heart | Diamond | Club

let all t = 
    [Spade; Heart; Diamond; Club]

let toString t =
    if t = Spade then
        "S"
    else if t = Heart then
        "H"
    else if t = Diamond then
        "D"
    else if t = Club then
        "C"
    else
        "N"

let toStringVerbose t =
    if t = Spade then
        "Spade"
    else if t = Heart then
        "Heart"
    else if t = Diamond then
        "Diamond"
    else if t = Club then
        "Club"
    else
        "None"