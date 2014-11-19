open Core.Std	
open Printf

let a,b,c = 
	let rec find a b =
		let hypi a b = sqrt ((a ** 2.0) +. (b ** 2.0)) in
		let c = hypi a b in
		let s = (a +. b +. c) in
			match (s = 1000.0, s > 1000.0) with
			| (true, _) -> (a,b,c)
			| (false, true) -> find (a +. 1.0) a
			| (false, false) -> find a (b +. 1.0)
	in find 1.0 1.0;;

printf "%f %f %f\n" a b c;;
printf "%f\n" (a *. b *. c);;