(* ******

Focusing on finding who's the winner, I skip the input process and set two
default seq as HHT and TTH.

* ******)

//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

implement main0 () = 
let
(
  val seq0: arrszref(int) = arrszref_make_elt(g0int2uint_int_size(3), 0)
  seq0[2]:= 1
  // seq0: 001 - HHT
  
  val seq1: arrszref(int) = arrszref_make_elt(g0int2uint_int_size(3), 1)
  seq1[2]:= 0
  // seq1: 110 - TTH
  
  val htlist = list0_nil()
  
  fnx
  flip(i: int): void = 
  (
    htlist = list0_cons(randomht, htlist) where
    {
      val randomht = $extfcall(int, "rand") % 2  // generate 0 or 1
    }
    if i < 2 then flip(i + 1)
    else if i >= 2 then check()
    else ()
  ) //end of flip(int):void
  and
  check(): int =
  (
    case htlist of
    | list0_nil() => ~1
    | list0_cons(x, xs) =>
      if seq0.2 = seq1.2 then  //last element of seq0 and 1 are same
      (
        if x = seq0.2 then
          case xs of
          | list0_nil() => ~1
          | list0_cons(x, xs) =>
            if seq0.1 = seq1.1 then  //middle element of seq0/1 are same
            (
              if x = seq0.1 then
                case xs of
                | list0_nil() => ~1
                | list0_cons(x, xs) =>
                  if x = seq0.0 then 0  //the winner is #0
                  else 1 // the winner is #1
              else flip()
            )
            else // middle different
            (
              if x = seq0.1 then
                case xs of
                | list0_nil() => ~1
                | list0_cons(x, xs) =>
                  if x = seq0.0 then 0 // the winner is @0
                  else flip()
              else
                case xs of
                | list0_nil() => ~1
                | list0_cons(x, xs) =>
                  if x = seq1.1 then 1 // the winner is #1
                  else flip()
            )
      )
      else  //last element of seq0 and 1 are different
      (
        if x = seq0.2 then
          case xs of
          | list0_nil() => ~1
          | list0_cons(x, xs) =>
            if x = seq0.1 then
              case xs of
              | list0_nil() => ~1
              | list0_cons(x, xs) =>
                if x = seq0.0 then 0  //the winner is #0
                else flip()
            else flip()
        else  //x = seq1.2
          case xs of
          | list0_nil() => ~1
          | list0_cons(x, xs) =>
            if x = seq1.1 then
              case xs of
              | list0_nil() => ~1
              | list0_cons(x, xs) =>
                if x = seq1.1 then 1 // the winner is #1
                else flip()
            else flip()
      )
  )
)
in
  val () = println! ("winner: ", flip(0))
end

