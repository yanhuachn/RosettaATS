//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

fun get3mid(posnum: int): void = let  //expect a positive input

  //var num: int
  //val () = $extfcall(void, "scanf", "%d", addr@num)
  //val posnum = if num > 0 then num else num
  
  fun intsize(i: int, size: int): int = 
  (
    if i/10 = 0 then size+1
    else intsize(i/10, size+1)
  )
  
  fun get_digit(i: int, index: int, current: int): int =
  (
    if current >= index then i % 10
    else get_digit(i/10, index, current + 1)
  )
    
  val midposition = 
    if intsize(posnum, 0) < 3 then ~1 else intsize(posnum, 0)/2 + 1
  
  val () = println!("mid: ",midposition)  //for test   (* ****** MARK 1 ****** *)
  
  val d1 = get_digit(posnum, 2, 1) //for test
  val d2 = get_digit(posnum, 3, 1)
  val d3 = get_digit(posnum, 4, 1)
  
  (*
  val d1 = get_digit(15151665, 3, 1)  (* ****** MARK 2 ****** *)
  val d2 = get_digit(15151665, 3, 1)
  val d3 = get_digit(15151665, 3, 1)
  *)
in
(
  println!("number is: ", posnum);  (* ****** MARK 3 ****** *)
  println!("Middle three digits are: ",d1," ",d2," ",d3);
)
end

(* ****** ****** *)

implement main0 () = 
(
  get3mid(12345);
  get3mid(234123);
  get3mid(~3421353);
)





(* ****** ****** *)
(* ****** ****** *)
(* ****** ****** *)

//// The version below has problem with the scanf function call.

implement main0() = let

  var num: int
  val () = $extfcall(void, "scanf", "%d", addr@num)
  val positive = if num < 0 then 0 - num else num
  
  fun intsize(i: int, size: int): int = 
  (
    if i/10 = 0 then size+1
    else intsize(i/10, size+1)
  )
  
  fun get_digit(i: int, index: int, current: int): int =
  (
    if current >= index then i % 10
    else get_digit(i/10, index, current + 1)
  )
    
  val midposition = 
    if intsize(num) < 3 then ~1 else intsize(num)/2 + 1
    
  val d1 = get_digit(num, midposition-1, 1)
  val d2 = get_digit(num, midposition, 1)
  val d3 = get_digit(num, midposition+1, 1)

in
  println!("Middle three digits are: ",d1," ",d2," ",d3)
end