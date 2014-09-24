(* Problem 1 *)
open Printf;;

let rec sumEvenFib fp fn l s = 
                if fp > l then s
                        else if fp mod 2 = 0 then sumEvenFib fn (fp + fn) l (s + fp)
                                else sumEvenFib fn (fp + fn) l s;;

let sumOfEvenFibTo limit = sumEvenFib 1 2 limit 0;;

printf "%d\n" (sumOfEvenFibTo 4000000);;
