let fact n =
  let rec aux acc n =
    match n with
      0 | 1 -> acc
    | _ -> aux (acc * n) (n - 1)
  in aux 1 n

let _ =
  let num = try int_of_string Sys.argv.(1) with _ -> 1 in
  let res = Int.to_string (fact num) in
  print_endline res;

  
