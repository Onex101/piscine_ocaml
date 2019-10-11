
type 'a tree = Nil | Node of 'a * 'a tree * 'a tree

let rec size = function
    | Nil -> 0
    | Node(_, Nil, Nil) -> 1
    | Node(_, l, r) -> 1 + size  l+ size r

let rec height = function
    | Nil -> 0
    | Node(_, Nil, Nil) -> 1
    | Node(_, l, r) -> height l + height r

let example_tree =
    Node('a', Node('b', Node('d', Nil, Nil), Node('e', Nil, Nil)),
         Node('c', Nil, Node('f', Node('g', Nil, Nil), Nil)))

let draw_square x y size =
    Graphics.moveto x y;
    Graphics.lineto x (y + size);
    Graphics.lineto (x + size) (y + size);
    Graphics.lineto (x + size) y;
    Graphics.lineto x y

let rec draw_tree  tree x y = match tree with
    | Node (v, l, r) -> begin
                            draw_square x y 50;
                            Graphics.moveto (x+20) (y+20);
                            Graphics.draw_string v;
                            Graphics.moveto  (x + 50) y;
                            Graphics.lineto (x + 170) (y - 50);
                            Graphics.moveto  (x + 50) (y + 50);
                            Graphics.lineto (x + 170) (y + 100);
                            draw_tree l (x + 170) (y + 100);
                            draw_tree r (x + 170) (y - 100)

                        end
    | Nil ->    begin
                    draw_square x y 50;
                    Graphics.moveto (x + 20) (y + 20);
                    Graphics.draw_string "Nil"
        
                end 
let x = 900
let y = 900

let () = 
        draw_tree (Node ("Root", Node("Branch", Nil, Nil), Nil)) 10 (y/2);
        print_string(Printf.sprintf ("The size of the tree is %i and the height is %i\n") (size example_tree) (height example_tree))