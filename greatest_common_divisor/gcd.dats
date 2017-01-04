//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

extern
fun
gcd(a: int, b: int): int

(* ****** ****** *)

implement
gcd(a, b) (* int *) =
(
  let fun loop(a: int, b: int, gcdivisor: int, curr: int): int =
  (
    if curr > a || curr > b then gcdivisor
    else
    (
      if a % curr = 0 && b % curr = 0 then 
        loop(a, b, curr, curr+1)
      else loop(a, b, gcdivisor, curr+1)
    )
  )
  in 
    loop(a, b, 1, 1)
  end
)

(* ****** ****** *)

implement main0 () =
(
  let fun main_func(): void =
  (
    println!("15, 25: ", gcd(15, 25));
    println!("77, 88: ", gcd(77, 88));
    println!("256, 365: ", gcd(256, 365));
    println!("256, 2560: ", gcd(256, 2560));
  )
  in
    main_func()
  end
)
