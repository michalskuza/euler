(* Problem 3 *)
open Printf;;

let limit = 600851475143;;

let n = int_of_float(sqrt (float_of_int limit));;

(* based on Wikpedia article about Sieve of Eratosthenes 
http://en.wikipedia.org/wiki/Sieve_of_Eratosthenes *)

let sieve n = 
let arr = (Array.make n false) in
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
  in step4 2;;

let primes = sieve n;;

let divisors = List.filter ((fun x -> limit mod x = 0)) primes;;
let largest = List.hd (List.rev divisors);;

printf "largest prime factor : %d\n" largest;;
