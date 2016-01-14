#!/usr/bin/ocaml
(*
 *  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
 *  The sum of these multiples is 23.
 *
 *  Find the sum of all the multiples of 3 or 5 below 1000.
 *)

let rec euler1 : int -> int = function
    | n when n <= 1 -> 0
    | n when n > 1 && n mod 3 == 0 -> n + euler1 (n-1)
    | n when n > 1 && n mod 5 == 0 -> n + euler1 (n-1)
    | n ->  euler1 (n-1)

(* Seems that function can only match one parameter:
   http://stackoverflow.com/questions/3592741/ocaml-how-to-pattern-match-on-an-arbitrary-number-of-arguments
 *)
(* The signature
   val euler2 : int -> int -> int;;
   can be placed in an interface file:
   http://stackoverflow.com/questions/6005176/ocaml-explicit-type-signatures

   or via lambda expressions:
   let euler2 : int -> int -> int = fun acc n -> ...
 *)
let rec euler2 (acc : int) (n : int) : int = match n with
    | n when n <= 1 -> acc
    | n when n > 1 && n mod 3 == 0 -> euler2 (acc+n) (n-1)
    | n when n > 1 && n mod 5 == 0 -> euler2 (acc+n) (n-1)
    | n -> euler2 acc (n-1)

