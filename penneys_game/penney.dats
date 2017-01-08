(* ******

Focusing on finding who's the winner, I skip the input process and set two
default seq as HHT and TTH.

* ******)

//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

staload STDLIB = "libats/libc/SATS/stdlib.sats"
staload TIME = "libats/libc/SATS/time.sats"
staload UN = "prelude/SATS/unsafe.sats"

implement main0 () = () where
{
  val seq0 = arrszref_make_elt<int>(i2sz(3), 0)
  val () = seq0[2]:= 1
  // seq0: 001 - HHT
  
  val seq1 = arrszref_make_elt<int>(i2sz(3), 1)
  val () = seq1[2]:= 0
  // seq1: 110 - TTH
  
  val () = let fun flip(pointer0: int, pointer1: int): void = 
  (
    if pointer0 = 3 then println!("winner: 0!")
    else 
    (  
      if pointer1 = 3 then println!("winner: 1!")
      else
      (
        let 
        
          (* ****** Random flip ****** *)
          val () = $STDLIB.srand48 ($UN.cast {lint} ($TIME.time_get ()))
          val rand = $STDLIB.drand48 ()
          val coin = (if rand > 0.5 then 1 else 0):int
          (* ****** Random flip ****** *)
          
        in
        (
          if coin = seq0[pointer0] && coin = seq1[pointer1]
            then flip(pointer0+1, pointer1+1)
          else
          (
            if coin = seq0[pointer0] then flip(pointer0+1, 0)
            else 
            (
              if coin = seq1[pointer1] then flip(0, pointer1+1)
              else flip(0, 0)
            )
          )
        )
        end
      )
    )
  )
  in
    flip(0,0)
  end
}

