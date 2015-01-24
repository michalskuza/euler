(* Problem 20 *)
(* compile with *)
(* ocamlfind ocamlopt -linkpkg -thread -package core nums.cmxa problem20_ver2.ml -o problem20_ver2 *)
open Core.Std
open Printf
open Big_int

let factorial n =
    let rec aux k acc =
        match (compare_big_int zero_big_int k) with 
        | 0 -> acc
        | _ -> aux (pred_big_int k) (mult_big_int k acc)
    in aux (big_int_of_int n) unit_big_int;;

let large_number = factorial 100

let _ =
	let sum = ref 0 in
	String.iter ~f:(fun i -> sum := !sum + (int_of_char i) - (int_of_char '0')) (string_of_big_int large_number);
	printf "Sum of all digits of 100! is %d\n" !sum