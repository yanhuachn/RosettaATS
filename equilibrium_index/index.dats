//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)

extern
fun
equi_indexes(): void

(* ****** ****** *)

implement
equi_indexes() =
(
  let
    val seq = arrszref_make_elt<int>(i2sz(10), 5)
    
    (* ****** ****** *)
    // Change input here below
    (* ****** ****** *)
    
    val () = seq[0]:= ~1
    val () = seq[1]:= 2
    val () = seq[2]:= ~3
    val () = seq[3]:= 4
    val () = seq[4]:= 7
    val () = seq[5]:= 4
    val () = seq[6]:= ~3
    val () = seq[7]:= 2
    val () = seq[8]:= ~1
    val () = seq[9]:= 0
    
    val sizeint = sz2i(seq.size())
   
    fun sum_left(pos: int, res: int): int = 
      if pos < 0 then res
      else if (pos <= sizeint - 1) then sum_left(pos-1, res + seq[pos])
      else sum_left(pos-1, res)
    
    fun sum_right(pos: int, res: int): int =
      if pos > sizeint - 1 then res
      else if pos >= 0 then sum_right(pos + 1, res + seq[pos])
      else sum_right(pos+1, res)
  
    fun
    check_loop(pos: int): void =
    (
      if pos > sizeint-1 then println!("Done.")
      else if sum_left(pos, 0) = sum_right(pos, 0) then 
      (
        println!("Equilibrium Index: ", pos);
        check_loop(pos+1)
      )
      else check_loop(pos+1)
    )
  
  in
  (
    check_loop(0)
  )
  end
)

(* ****** ****** *)

implement main0 () =

  let
    //val sequence = arrayref($arrpsz{int}(~7,1,5,2,~4,3,0,~2,~8,6))
    //val sequence = arrszref_make_elt<int>(10, 5)
  in
    equi_indexes();
  end
