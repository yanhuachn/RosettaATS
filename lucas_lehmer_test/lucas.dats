//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"
//

staload
Math =
"libats/libc/SATS/math.sats"

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
mypower(x: int, n: int): int =
(
  if n > 0 then x * mypower(x, n-1) else 1
)


(* ****** ****** *)

fun
isqrt(n: intGte(0)): intGte(0) =
  $UNSAFE.cast($Math.sqrt_double(g0i2f(n)))
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
    val mer = mypower(2, p) - 1  // 2^p - 1
    val mer1 = g1ofg0(mer)
    val () = assertloc(mer1 >= 2)
    val v1 = is_prime(mer1)
    val v2 = (if mer % fun_s(p-1) = 0 then true else false): bool
    val res = (if v1 && v2 then true else false): bool
    
  in
  (
    (* for test
    println!(p,": ", "prime-", v1);
    println!(" formula-", v2);
    println!(" res-", res);
    *)
    
    if res then println!("Mersenne Prime: ", p) else ();
    test(p+1, upperbound);
  )
  end
  )
)

(* ****** ****** *)

implement main0 () =
(
  test(3, 100) // set upper bound as 100
)






////  BACK UP 

(*
extern
fun
is_prime(p: int): bool

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