//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)

extern
fun
dsum(num: int): int

(* ****** ****** *)

extern
fun
is_harshad(num: int): bool

(* ****** ****** *)

implement
dsum(num) = 
let

  fun loop(num: int, res: int): int =
  (
    if num = 0 then res
    else loop(num / 10, res + num % 10)
  )

in 
  loop(num, 0)
end

(* ****** ****** *)

implement
is_harshad(num: int) =
(
  if num % dsum(num) = 0 then true
  else false
)

(* ****** ****** *)

implement main0 () =
(
  let 
    fun loop(times:int, time:int, num:int): void =
    (
      if time > times then ()
      else
      (
        if is_harshad(num) then
        (
          println!("Harshad number No.", time, ": ", num);
          loop(times, time+1, num+1);
        )
        else 
        (
          loop(times, time, num+1)
        )
      )
    )
  in
    loop(20, 1, 1);
    println!("--------------------------");
    loop(1, 1, 1001);
  end
)