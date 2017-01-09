//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"
//

extern
fun
queens(q: int): void

(* ****** ****** *)

implement
queens(q) =
(
let

  val board = 
  (
  case q of
  | 2 => mtrxszref_make_elt<int>(i2sz(2),i2sz(2),0)
  | 3 => mtrxszref_make_elt<int>(i2sz(3),i2sz(3),0)
  | 4 => mtrxszref_make_elt<int>(i2sz(4),i2sz(4),0)
  | 5 => mtrxszref_make_elt<int>(i2sz(5),i2sz(5),0)
  | 6 => mtrxszref_make_elt<int>(i2sz(6),i2sz(6),0)
  | 7 => mtrxszref_make_elt<int>(i2sz(7),i2sz(7),0)
  | 8 => mtrxszref_make_elt<int>(i2sz(8),i2sz(8),0)
  | 9 => mtrxszref_make_elt<int>(i2sz(9),i2sz(9),0)
  | 10 => mtrxszref_make_elt<int>(i2sz(10),i2sz(10),0)
  | _ => mtrxszref_make_elt<int>(i2sz(8),i2sz(8),0)
  ): mtrxszref int
  
  fun isclr_v(x1: int, y1: int): bool =
  (
    let
      fun loop_v(i: int): bool =
      (
        if i < 0 then true
        else
        (
          if board[i, y1] = 1 then false
          else loop_v(i-1)
        )
      )
    in
      loop_v(x1-1)
    end
  )
  
  fun isclr_d1(x1: int, y1: int): bool =
  (
    let
      fun loop_d1(i: int, j: int): bool =
      (
        if i < 0 || j < 0 then true
        else
        (
          if board[i, j] = 1 then false
          else loop_d1(i-1, j-1)
        )
      )
    in
      loop_d1(x1-1, y1-1)
    end
  )
  
  fun isclr_d2(x1: int, y1: int): bool =
  (
    let
      fun loop_d2(i: int, j: int): bool =
      (
        if i < 0 || j > q - 1 then true
        else 
        (
          if board[i, j] = 1 then false
          else loop_d2(i-1, j+1)
        )
      )
    in
      loop_d2(x1 - 1, y1 + 1)
    end
  )
  
  
  
  fun print_board(): void = // Can be simplyfied a lot.
  (
    let fun loop_printrow(r1: int, q1: int, board1: mtrxszref int): void =
    (
      if r1 > q1 - 1 then ()
      else
      (
        let fun loop_printcol(r2: int, c2: int, q2: int, board2: mtrxszref int): void =
        (
          if c2 > q2 - 1 then ()
          else
          (
            print(board[r2, c2]);
            print(" ");
            loop_printcol(r2, c2+1, q2, board2);
          )
        )
        in
        (
          loop_printcol(r1, 0, q1, board1);
          println!(" ");
        )
        end;
        
        loop_printrow(r1 + 1, q1, board1);
      )
    )
    in
    (
      loop_printrow(0, q, board);
      println!(" ");
    )
    end
  )
  
  
  fun loop(x: int, y: int): void =
  (
    //println!("->into: ",x,",", y);
    board[x, y]:= 1;
    
    if x = q - 1 then 
    (
      println!("Found a solution!");
      print_board();
    )
    else 
    (
      let fun innerloop(pos: int): void = 
      (
        if pos > q - 1 then ()
        else
        (
          // (x,y) -> (x+1, q)
        
          //println!("checking: ",x+1,",", pos);
          //println!(isclr_v(x+1,pos),isclr_d1(x+1,pos),isclr_d2(x+1,pos));
          if isclr_v(x+1,pos) && isclr_d1(x+1,pos) && isclr_d2(x+1,pos) then loop(x+1,pos)
          else ();
        
          innerloop(pos + 1);
        )
      )
      in
        innerloop(0)
      end
    );
    
    
    board[x, y]:= 0;
    //println!("->exit: ",x,",", y);
  )
  
  fun init_loop(s: int): void =
  (
    if s > q - 1 then 
    (
      println!(q, "-Queens puzzle: Done!");
      println!("");
    )
    else
    (
      loop(0, s);
      init_loop(s + 1);
    )
  )

in
  init_loop(0)
end

)


(* ****** ****** *)

implement main0 () = 
(
  queens(2);
  queens(3);
  queens(4);
  queens(5);
  queens(8);
)