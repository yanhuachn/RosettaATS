//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"
//

(* ****** ****** *)

extern
fun
sum_propdivs(num: int): int

(* ****** ****** *)

implement
sum_propdivs(num) = 
(
  let 
    fun loop_sum(pos: int, res: int):<cloref1> int =
    (
      if pos >= num then res
      else
      (
        if num % pos = 0 then loop_sum(pos+1, res+pos)
        else loop_sum(pos+1, res)
      )
    )
  in
    loop_sum(1, 0)
  end
)


(* ****** ****** *)

implement main0 () = 
(
  let fun loop(from: int, to: int, upb: int): void =
  (
    if from >= upb then println!("Done.")
    else
    (
      if to > upb then loop(from+1, from+2, upb)
      else
      (
        if from = sum_propdivs(to) && sum_propdivs(from) = to then
        (
          println!("Pairs: ", from, " and ", to);
          loop(from, to+1, upb);
        )
        else
        (
          loop(from, to+1, upb)
        )
      )
    )
  )
  in
    loop(1, 2, 2000)
  end
)





//// old version


val divslists list0(list0(int)) = list0_nil(list0_nil())
val divssum: arrszref(int) = arrszref_make_elt(i2sz(20001), 0)

//

(* ****** ****** *)

extern
sum_up(i: int): void

(* ****** ****** *)

// sum up all divs of integer i and store into divssum array
implement
sum_up(i) = let
(
  val divslist = list_get_at(divslists, i)
  fun
  loop(lst: list0 int): void =
  (
    case lst of
    | list0_cons(x, xs) => 
      divssum[i]:= divssum[i]+x; loop(xs);
    | list0_nil() => ()
  )
)
in
  loop(divslist)
end

(* ****** ****** *)

extern
store_div(big: int, small: int): void

(* ****** ****** *)

implement
store_div(big, small) =
(
  if big%small = 0 && big!=small then
    let lst = list_get_at(divslists, big)
    in
      lst = list0_cons{int}(small, lst)
    end
  else ()
)


(* ****** ****** *)

implement main0 () = let

  fun 
  loop_store(big: int, small: int): void =
  (
    if big > 20000 then ()
    else if small >= big then loop_store(big+1, 1)
    else
    (
      store_div(big, small);
      loop_store(big, small+1);
    )
  )
  
  fun
  loop_sum(i: int): void =
  (
    sum_up(i);
    loop_sum(i+1);
  )
  
  fun
  loop_match(from: int, to: int): void =
  (
    if from >= 20000 then ()  // end of all
    else if to > 20000 then
      loop_match(from+1, from+2)
    else
    (
      if divssum[from] = divssum[to] && from != to then
        println!("Admicable pair: ",from," and ",to)
      loop_match(from, to+1)
    )  
  )
  
in
  loop_store(1, 1);
  loop_sum(1);
  loop_match(1, 2);
end