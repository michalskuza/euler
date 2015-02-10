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
    in step4 2;;