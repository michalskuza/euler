open Core.Std
open Printf

let generate_tuples n =
	let l = let create_numbers n = 
			let rec aux l i = 
			match i with
			| 0 -> l
			| _ -> aux (i :: l) (pred i)
			in aux [] n in
			create_numbers n in
		let rec aux l1 l2 acc =
		match l1 with
		| [] -> acc
		| [a] -> aux [] l2 ((List.map ~f:(fun x -> (a, x))  l2) @ acc)
		| hd :: tl -> let tmp = List.map ~f:(fun x -> (hd, x)) l2 
			in aux tl l2 (tmp @ acc)
	in aux l l [];;


let pyth_triplets n =
	let tuples = generate_tuples n in 
	let check_if_is_ok (a, b) = 
		let check_if_int x = (Float.mod_float x 1.0) = 0.0 in 
		let c = sqrt (Float.of_int (a * a + b * b)) in
		(check_if_int c) in
	let filtered = List.filter tuples ~f:(check_if_is_ok) in 
	let triplets = List.map filtered ~f:(fun (a, b) -> (a,b, Int.of_float (sqrt (Float.of_int (a*a + b*b)))))  in
	let filtered_triplets = List.filter triplets ~f:(fun (_, _, c) -> if c > n then false else true) in
	List.filter filtered_triplets ~f:(fun (a,b,c) -> a + b + c = n);;

List.iter ~f:(fun (a,b,c) -> printf "%d %d %d\n%d\n" a b c (a * b * c)) (pyth_triplets 1000);;
