(* Problem 6 *)
open Printf;;

let sum_square_difference =
      let rec init i a = 
      match i = 0 with
      | false -> init (pred i) (i::a)
      | true -> a
    in let numbers = init 100 [] 
    in let sum_squares = List.fold_left (fun x y -> x + y) 0 (List.map (fun x -> x*x) numbers)
    in let square_sum =
       let sum = List.fold_left (fun x y -> x+y) 0 numbers
         in sum * sum
    in square_sum - sum_squares ;;

printf "Sum square difference: %d\n" sum_square_difference;;