//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)

extern
fun
is_prime(p: int): bool

(* ****** ****** *)

extern
fun
fun_s(p: int): int

(* ****** ****** *)

extern
fun
test(p: int, upperbound: int): void

(* ****** ****** *)

implement
is_prime(p) = (* bool *) let   
(
  val res = false
  if p = 2 then val res = true
  else if p <= 1 || p % 2 = 0 then val res = false
  else
  (
    val to = (* ****** MISSING PART I ****** *) // do a sqrt and take the integer part
    let
      fun loop(pos: int, to: int): bool =
      (
        if p % pos = 0 then false
        else loop(pos+2, to)
      )
    in
      val res = loop(3, to)
    end
  )
)
in 
  res
end

(* ****** ****** *)

implement
fun_s (p) = 
(
  if p = 1 then 4
  else if p > 1 then fun_s(p-1)*fun_s(p-1)-2 
)

(* ****** ****** *)

implement
test(p, upperbound) (* void *) =
(
  if p >= upperbound then ()
  else let
  (
    val res = false
    val mer = (* ****** MISSING PART II ****** *) // 2^p - 1
    val res = if is_prime(mer) && mer%fun_s(p-1)=0 then true else false
  )
  in
  (
    if res = true then println!("Mersenne Prime: ", p)
    test(p+1, upperbound)
  )
  end
)

(* ****** ****** *)

implement main0 () =
{
  test(3, 1000) // set upper bound as 1000
}

