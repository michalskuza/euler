(* Problem 1 *)
open Printf;;

let isMultOf n m = (n mod m) = 0;;

let rec sumMultOf3Or5Aux l n = 
        if n = 0 then l 
        else if (isMultOf n 3) || (isMultOf n 5) then sumMultOf3Or5Aux (n + l) (n -1)
        else sumMultOf3Or5Aux l (n-1)
;;

let sumMultOf3Or5 i = sumMultOf3Or5Aux 0 i;;

printf "%d\n" (sumMultOf3Or5 999);;	