//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

implement main0() = let
(
  var num: int
  val () = $extfcall(void, "scanf", "%d", addr@num)
  val positive: int = if num < 0 then 0 - num else num
  
  fun intsize(i: int, size: int): int = 
    if i/10 = 0 then size+1
    else intsize(i/10, size+1)
  
  fun get_digit(i: int, index: int, current: int): int =
    if current >= index then i % 10
    else get_digit(i/10, index, current + 1)
    
  val midposition = 
    if intsize(num) < 3 then ~1 else intsize(num)/2 + 1
    
  val d1: int = get_digit(num, midposition-1, 1)
  val d2: int = get_digit(num, midposition, 1)
  val d3: int = get_digit(num, midposition+1, 1)
)
in
  println!("Middle three digits are: ",d1," ",d2," ",d3)
end