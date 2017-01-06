//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"
//


staload
M =
"libats/libc/SATS/math.sats"


(* ****** ****** *)
(*
extern
fun
is_prime(p: int): bool
*)
(* ****** ****** *)

extern
fun
fun_s(p: int): int

(* ****** ****** *)

extern
fun
test(p: int, upperbound: int): void

(* ****** ****** *)

fun
power(x: int, n: int): int =
(
  if n > 0 then x * power(x, n-1) else 1
)

(* ****** ****** *)

fun
isqrt(n: intGte(0)): intGte(0) =
  $UNSAFE.cast($M.sqrt_double(g0i2f(n)))
//
fun
is_prime
(
n : intGte(2)
) : bool =
(
if
(n = 2)
then true
else (
  if n % 2 = 0
    then false
    else (1, (isqrt(n)+1)/2).forall()(lam i => n % (2*i+1) != 0)
) (* else *)
) (* end of [is_prime] *)

(* ****** ****** *)
(*
implement
is_prime(p) = 
(
  if (p = 2) then true
  else
  (
    if (p <=1 || p % 2 = 0) then false
    else let
      val x = $M.sqrt(p)
      fun loop(i: int): bool =
        if i <= x then (if p % i = 0 then false else loop(i+2)) else true
    in
      loop(3)
    end
  )
)
*)

(* ****** ****** *)

implement
fun_s (p) = 
(
  if p <= 1 then 4
  else fun_s(p-1)*fun_s(p-1)-2 
)

(* ****** ****** *)

implement
test(p, upperbound) (* void *) =
(
  if p >= upperbound then ()
  else 
  (
  let
    val mer = power(2, p) - 1  // 2^p - 1
    val res = 
      if 
        is_prime(mer) && mer % fun_s(p-1) = 0 
        //mer > 3 && mer % 45 = 0
      then true 
      else false
  in
  (
    if res then println!("Mersenne Prime: ", p) else ();
    test(p+1, upperbound);
  )
  end
  )
)

(* ****** ****** *)

implement main0 () =
(
  test(3, 1000) // set upper bound as 1000
)

