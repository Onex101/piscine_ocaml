open Color
open Value

type t = {
            v : Value;
            c : Color;
}
val newCard : Value.t -> Color.t -> t
val allSpades : t list
val allHearts : t list
val allDiamonds : t list
val allClubs : t list
val all : t list
val getValue : t -> Value.t
val getColor : t -> Color.t
val toString : t -> string
val toStringVerbose : t -> string
val compare : t -> t -> int
val max : t -> t -> t
val min : t -> t -> t
val best : t list -> t
val isOf : t -> Color.t -> bool
val isSpade : t -> bool
val isHeart : t -> bool
val isDiamond : t -> bool
val isClub : t -> bool

let newCard (v: Value) (c: Color) =
    { v = v; d= c }

let allSpades = 
    let rec loop s a =
        match a with
        | [] -> s
        | h::t -> loop ((newCard h Spade)::s) t in
 
    let a = Value.all in
    List.rev (loop [] a)

let allHearts = 
    let rec loop s a =
        match a with
        | [] -> s
        | h::t -> loop ((newCard h Heart)::s) t in
 
    let a = Value.all in
    List.rev (loop [] a)

let allDiamonds = 
    let rec loop s a =
        match a with
        | [] -> s
        | h::t -> loop ((newCard h Diamonds)::s) t in
 
    let a = Value.all in
    List.rev (loop [] a)

let allClubs = 
    let rec loop s a =
        match a with
        | [] -> s
        | h::t -> loop ((newCard h Clubs)::s) t in
 
    let a = Value.all in
    List.rev (loop [] a)

let all = 
    allSpades::allHearts::allDiamonds::allClubs

let getValue t = 
    t.v

let getColor t = 
    t.c