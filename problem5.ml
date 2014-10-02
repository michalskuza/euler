open Printf;;

let rec gcd u v =
  if v <> 0 then (gcd v (u mod v))
  else (abs u);;

let lcm m n =
  match m, n with
  | 0, _ | _, 0 -> 0
  | m, n -> abs (m * n) / (gcd m n);;

let smallest_multiple n =
	let rec find i a n = 
		match i > n with
		| true -> a
		| false -> find (succ i) (lcm i a) n
	in find 2 1 n;;

printf "smallest_multiple %d : %d\n" 20 (smallest_multiple 20);;
