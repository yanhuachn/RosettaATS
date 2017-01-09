//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"
//

(* ****** ****** *)

extern
fun
is_onboard(x: int, y: int): bool

extern
fun
start(x: int, y: int): void

(* ****** ****** *)

implement
is_onboard(x, y) = 
(
  if x < 0 || x > 7 then false
  else
  (
    if y < 0 || y > 7 then false
    else true
  )
)

(* ****** ****** *)

implement
start(x1, y1) = 
(
  let 
    val board = mtrxszref_make_elt<int>(i2sz(8),i2sz(8),0)
  
    fun loop(x: int, y: int, depth: int): void =
    (
      // write depth on the position on the board
      board[x, y]:= depth;
      println!("Trying: ",x,",",y," | ",depth);
      
      if depth = 64 then println!("found a path!")
      else
      (
        let
          val move1 = @(x-2, y+1)
          val move2 = @(x-1, y+2)
          val move3 = @(x+1, y+2)
          val move4 = @(x+2, y+1)
          val move5 = @(x+2, y-1)
          val move6 = @(x+1, y-2)
          val move7 = @(x-1, y-2)
          val move8 = @(x-2, y-1)
        in
        (
          
          
          if is_onboard(move1.0, move1.1) && board[move1.0, move1.1]=0 
            then loop(move1.0, move1.1, depth+1) else ();
            
          if is_onboard(move2.0, move2.1) && board[move2.0, move2.1]=0 
            then loop(move2.0, move2.1, depth+1) else ();
          
          if is_onboard(move3.0, move3.1) && board[move3.0, move3.1]=0 
            then loop(move3.0, move3.1, depth+1) else ();
            
          if is_onboard(move4.0, move4.1) && board[move4.0, move4.1]=0 
            then loop(move4.0, move4.1, depth+1) else ();
            
          if is_onboard(move5.0, move5.1) && board[move5.0, move5.1]=0 
            then loop(move5.0, move5.1, depth+1) else ();
            
          if is_onboard(move6.0, move6.1) && board[move6.0, move6.1]=0 
            then loop(move6.0, move6.1, depth+1) else ();
            
          if is_onboard(move7.0, move7.1) && board[move7.0, move7.1]=0 
            then loop(move7.0, move7.1, depth+1) else ();
            
          if is_onboard(move8.0, move8.1) && board[move8.0, move8.1]=0 
            then loop(move8.0, move8.1, depth+1) else ();
            
        )
        end
      );
      
      // overwrite a 0 to the position on the board, when back out
      board[x, y]:= 0;
    )
  in
  (
    loop(x1, y1, 1);
    println!("Done.");
  )
  end
)

(* ****** ****** *)

implement main0() = 
(
  start(0, 0);
)