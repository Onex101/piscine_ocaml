
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

let () = 
        print_string(Printf.sprintf ("The size of the tree is %i and the height is %i\n") (size example_tree) (height example_tree))