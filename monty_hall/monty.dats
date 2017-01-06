//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//


(* ****** ****** *)

extern
fun
monty_game(total: int, pos: int, staywin: int): int

(* ****** ****** *)

//the idea here is
//if the player originally chose the correct door => stay to win
//if the player originally chose the wrong door => switch to win

implement
monty_game(total, pos, staywin) =
(
  if pos > total then staywin
  else
  (
    let
      val doors = arrszref_make_elt<int>(i2sz(3), 0)
      val () = doors[$extfcall(int, "rand")%3]:= 1    (* ****** ATTENTION ****** *)
      val choice = $extfcall(int, "rand")%3      //concern here about rand
                                                 //1.functional? 2.same output? without time seed.
    in
    (
      if doors[choice] = 1 then monty_game(total, pos+1, staywin+1)
      else monty_game(total, pos+1, staywin)
    )
    end  
  )
)

(* ****** ****** *)


implement main0 () = 
(
  let
    val total = 1000
    val count_stay_win = monty_game(total, 1, 0)
  in
  (
    println!("Stay to win: ", count_stay_win);
    println!("Switch to win: ", total - count_stay_win);
  )
  end
)