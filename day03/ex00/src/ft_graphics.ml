type 'a tree = Nil | Node of 'a * 'a tree * 'a tree

let draw_square x y size =
    Graphics.moveto x y;
    Graphics.lineto x (y + size);
    Graphics.lineto (x + size) (y + size);
    Graphics.lineto (x + size) y;
    Graphics.lineto x y
    
let rec draw_tree_node  node x y = match node with
    | Node (v, l, r) -> begin
                            draw_square x y 50;
                            Graphics.moveto (x+20) (y+20);
                            Graphics.draw_string v;
                            Graphics.moveto  (x + 50) y;
                            Graphics.lineto (x + 170) (y - 50);
                            Graphics.moveto  (x + 50) (y + 50);
                            Graphics.lineto (x + 170) (y + 100);
                            draw_tree_node l (x + 170) (y + 100);
                            draw_tree_node r (x + 170) (y - 100)
                        end
    | Nil ->    begin
                    draw_square x y 50;
                    Graphics.moveto (x + 20) (y + 20);
                    Graphics.draw_string "Nil"
        
                end 
let x = 900
let y = 900

let main () = 
    Graphics.open_graph (Printf.sprintf " %ix%i" x y);
    Graphics.moveto 400 300;
    draw_square 800 600 100;
    draw_tree_node (Node ("Root", Node("Branch", Nil, Nil), Nil)) 10 (y/2);
    Graphics.read_key ()

let _ = 
        main ();