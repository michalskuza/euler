(* Problem 20 *)
(* compile with *)
(* ocamlfind ocamlopt -linkpkg -thread -package core nums.cmxa problem20.ml -o problem20 *)
open Core.Std
open Printf

let factorial n =
        let rec aux (k : Big_int.big_int) (acc : Big_int.big_int) =
        	let result = Big_int.compare_big_int Big_int.zero_big_int k
        	in
                match result with 
                | 0 -> acc
                | _ -> aux (Big_int.pred_big_int k) (Big_int.mult_big_int k acc)
        in aux (Big_int.big_int_of_int n) Big_int.unit_big_int;;

let total_sum num = 
   let explode s =
    let rec exp i l =
      if i < 0 then l else exp (i - 1) (s.[i] :: l) in
    exp (String.length s - 1) [] in 
    let offset = 48 in
    let digits = List.map ~f:(fun x -> ((int_of_char x) - offset)) (explode num) in
    List.fold ~init: 0 ~f:(+) digits;;

printf "Sum of all digits of 100! is %d\n" (total_sum (Big_int.string_of_big_int (factorial 100)));