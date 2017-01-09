//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)
//
extern
fun
lcm(a: int, b: int): int
//
(* ****** ****** *)
//
implement
lcm(a, b) =
(
  let
    val low = (if a < b then a else b): int
    val high = (if a > b then a else b): int
    
    fun loop(i: int): int =
    (
      if i >= high then low * high
      else
      (
        if (low * i) % high = 0 then low * i
        else loop(i + 1)
      )
    )
  in 
    loop(2)
  end
)

implement main0 () = 
(
  println!("1, 2: ",lcm(1, 2));
  println!("8, 19: ",lcm(8, 19));
  println!("5, 25: ",lcm(25, 5));
)