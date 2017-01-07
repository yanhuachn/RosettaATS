//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"
//

(* ****** ****** *)

extern
fun
score(str: string, diff: int): int    // my score = how many chars are different

(* ****** ****** *)

extern
fun
print_shuffled(str: string, diff: int): void

(* ****** ****** *)

implement
score(str, diff) =
(
  let
    val strlist = string_explode(str)
    val strsize = length(strlist)
    val strsize = g1ofg0(strsize)
    val () = assertloc (strsize >= 0)
    
    fun loop_sum(pos: int, res: int):<cloref1> int =
    (
      if pos > strsize - 1 then res
      else
      (
        if list0_get_at_exn(strlist, pos) != list0_get_at_exn(strlist, (pos+strsize-diff)%strsize) then
        (
          loop_sum(pos+1, res+1)
        )
        else
        (
          loop_sum(pos+1, res)
        )
      )
    )
  in
    loop_sum(0, 0)
  end
)

(* ****** ****** *)

implement
print_shuffled(str, diff) =
(
  let
    val strlist = string_explode(str)
    val strsize = length(strlist)
    val strsize = g1ofg0(strsize)
    val () = assertloc (strsize >= 0)
    
    fun loop_print(pos: int):<cloref1> void =
    (
      if pos > strsize - 1 then ()
      else
      (
        print(list0_get_at_exn(strlist, (pos+strsize-diff)%strsize));
        loop_print(pos+1);
      )
    )
  in
  (
    loop_print(0);
  )
  end
)

(* ****** ****** *)

implement main0 () = 

let 
  fun loop(str: string, diff: int, best_diff: int, best_score: int): void =
  (
    let
      val strlist = string_explode(str)
      val strsize = length(strlist)
      val strsize = g1ofg0(strsize)
      val () = assertloc (strsize >= 0)
      val curr_score = score(str, diff)
    in
    (
      if diff > strsize - 1 then
      (
        print(str);
        print("->");
        print_shuffled(str, best_diff);
        println!(": ", strsize-best_score," (number of UNCHANGED)");
      )
      else
      (
        if curr_score > best_score then loop(str, diff+1, diff, curr_score)
        else loop(str, diff+1, best_diff, best_score)
      )
    )
    end
  )
in
  (
    loop("abracadabra", 1, 0, 0);
    loop("seesaw", 1, 0, 0);
    loop("grrrrrr", 1, 0, 0);
    loop("pop", 1, 0, 0);
    loop("up", 1, 0, 0);
    loop("a", 1, 0, 0);
  )
end