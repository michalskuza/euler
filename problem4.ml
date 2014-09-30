open Printf;;

let rec reverse num =
	let rec reverse_aux num rev = 
			match num  with
			| 0 -> rev
			| _ -> let revTmp = rev * 10 + num mod 10 in
					 reverse_aux (num/10) revTmp
			in reverse_aux num 0;;

let largest_palindrome m n = 
	let rec generate i j a n = 
		let check b a = 
		match b = reverse b with
		| true -> if a > b then a else b
		| false -> a
		in 
		match i > n with
		| false -> 
			(match j > n with
			| true -> generate (i + 1) 1 a n
			| false -> generate i (j + 1) (check (i*j) a) n)
		| true -> a
	in generate m m (m*m) n;;

printf "largest palindrome product : %d\n" (largest_palindrome 100 999);;
