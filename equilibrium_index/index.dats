//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)

extern
fun
equi_indexes(seq: arrszref int): void

(* ****** ****** *)

implement
equi_indexes(seq) =
(
  let
  (
    sizeint = g0uint2int_size_int(seq.size())
    
    fun
    sum_left(pos: int, res: int): int = 
    (
      if pos < 0 then res
      else if pos <= sizeint - 1 then
      (
        sum_left(pos - 1, res + seq[pos])
      )
    )
    
    fun
    sum_right(pos: int, res: int): int =
    (
      if pos > sizeint - 1 then res
      else if pos >= 0 then
      (
        sum_right(pos + 1, res + seq[pos])
      )
    )
  
    fun
    check_loop(pos: int): void =
    (
      if pos > sizeint-1 then ()
      else if sum_left(pos, 0) = sum_right(pos, 0) then 
      (
        println!("Equilibrium Index: ", pos);
        check_loop(pos+1)
      )
    )
  )
  in
  (
    check_loop(0)
  )
  end
)

(* ****** ****** *)

implement main0 () =
{
  let
  (
    val sequence = arrayref($arrpsz{int}(~7,1,5,2,~4,3,0,~2,~8,6))
    
    (*
    val sequence: arrszref int = szref_make_elt(i2sz(10), 0);
    val sequence[0]:= ~7
    val sequence[1]:= 1
    val sequence[2]:= 5
    val sequence[3]:= 2
    val sequence[4]:= ~4
    val sequence[5]:= 3
    val sequence[6]:= 0
    val sequence[7]:= ~2
    val sequence[8]:= ~8
    val sequence[9]:= 6
    *)
    
  )
  in
    equi_indexes(sequence)
  end
}