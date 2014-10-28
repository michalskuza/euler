(* Problem 10 *)
open Printf;;

let sum_of_primes k = 
		let sieve n = 
			let arr = (Array.create n false) in
			  let rec step3 p m = 
			    let mul = p * m in
			    match (mul >= n) with 
			    | true -> step4 (p+1)
			    | false -> arr.(mul) <- true;
			          step3 p (m + 1);
			  and 
			  step4 p = match (p >= n) with
			    | true -> []
			    | false ->
			      (match arr.(p) with
			        | true -> step4 (p + 1)
			        | false -> p :: (step3 p 1))
			  in step4 2
		in let primes = sieve k
	in  List.fold_left (+) 0 primes;;

printf "Sum of primes up to %d : %d\n" 2_000_000 (sum_of_primes 2_000_000);;