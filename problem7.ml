(* Problem 7 *)
open Printf;;

let nth_prime n = 
  let is_prime m = 
  let rec check_if_prime i m =
      match m mod i = 0 with
      | true -> false
      | false -> if (succ i) = m 
                 then true 
                 else check_if_prime (succ i) m
      in check_if_prime 2 m
    in
  let rec find_nth_prime i j p n=
    match is_prime i with
    | false -> find_nth_prime (succ i) j p n
    | true -> if j = n 
              then p
              else find_nth_prime (succ i) (succ j) i n
  in find_nth_prime 2 1 2 n;;


printf "10 001st prime number : %d\n" (nth_prime 10001);;