open Printf;;

let rec gcd (u : int64) (v : int64) =
  if v <> 0L then (gcd v (Int64.rem u v))
  else (Int64.abs u);;
 
let lcm (m : int64) (n : int64) =
  match m, n with
  | 0L, _ | _, 0L -> 0L
  | m, n -> ( Int64.div (Int64.abs (Int64.mul m n)) (gcd m n));;

let smallest_multiple (n : int64) =
	let rec find (i : int64) (a : int64) (n : int64) = 
		match i > n with
		| true -> a
		| false -> find (Int64.succ i) (lcm i a) n
	in find 2L 1L n;;

printf "smallest_multiple %d : %Ld\n" 20 (smallest_multiple 20L);;
