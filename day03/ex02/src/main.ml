open Cipher
open Uncipher

let () = print_string(xor "efg`abclmnohijktuvwpqrs|}~" 4)
let () = print_string(unrot42 "qrstuvwxyzabcdefghijklmnop")