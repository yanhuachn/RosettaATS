(* ******

Focusing on finding who's the winner, I skip the input process and set two
default seq as HHT and TTH.

* ******)

//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

implement main0 () = () where
{
  val seq0 = arrszref_make_elt<int>(i2sz(3), 0)
  val () = seq0[2]:= 1
  // seq0: 001 - HHT
  
  val seq1 = arrszref_make_elt<int>(sz2i(3), 1)
  val () = seq1[2]:= 0
  // seq1: 110 - TTH
  
  val () = let fun flip(pointer0, pointer1): void = 
  (
    if pointer0 = 3 then println!("winner: 0!")
    else if pointer1 = 3 then println!("winner: 1!")
    else
    (
      let coin = 0 //random 0 or 1
      in
      (
        if coin = seq0[pointer0] && coin = seq1[pointer1]
          then flip(pointer0+1, pointer1+1)
        else if coin = seq0[pointer0]
          then flip(pointer0+1, 0)
        else if coin = seq1[pointer1]
          then flip(0, pointer1+1)
        else flip(0, 0)
      )
      end
    )
  )
  in
    flip(0,0)
  end
}

