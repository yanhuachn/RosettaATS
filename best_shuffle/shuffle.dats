//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)

//string to array
extern
fun
str_to_array(word: string): arrszref(char)

(* ****** ****** *)

// count score
extern
fun
count_score(word1: arrszref char, word2: arrszref char): int 

(* ****** ****** *)

extern
fun
best_shuffle(word: string): void

(* ****** ****** *)

extern
fun
array_copy(from: arrszref, to: arrszref): void

(* ****** ****** *)

implement
str_to_array(word) =
(
  let
  (
    val sizeint: int = string_length(word)
    val size: size_t = i2sz(sizeint)
    val array: arrszref(char) = arrszref_make_elt(size, ' ')
    let
    (
      fun loop(sizeint: int, pos: int): void =
        if pos <= sizeint - 1 then
        (
          array[pos]:= string_get_at(word, pos);
          loop(sizeint, pos+1)
        )
        else ()
    )
    in
      loop(sizeint, 0)
    end
  )
  in 
    array
  end
)

(* ****** ****** *)

implement
count_score(word1, word2) =
(
  let 
    val size: int = word1.size()
    fun
    loop_count(size: int, pos: int, score: int): int =
    (
      if pos > size-1 then score  //end
      else
      (
        if word1[pos] = word2[pos] then loop_count(size, pos+1, score+1)
        else loop_count(size, pos+1, score)
      )
    )
  in
    loop_count(size, 0, 0)
  end
)

(* ****** ****** *)

implement
best_shuffle(word) = (* void *)
(
let
  val size: rsz = word.size()
  val sizeint: int = g0uint2int_size_int(size)
  val array: arrszref(char) = str_to_array(word)
  val best_array: arrszref(char) = arrszref_make_elt(array.size(), ' ')
  val () = array_copy(array, best_array)
  val best_score: int = sizeint
  val temp_array: arrszref(char) = arrszref_make_elt(array.size(), ' ')
  val temp_score: int = 0
  val () =
  let
    fun loop_shuffle(sizeint: int, diff: int, curr: int): void =
    (
      if diff >= sizeint then ()
      else
      (
        if curr >= sizeint - 1 then // finish one shuffle out of many
        (
          let temp_score = count_score(temp_array, array)
          in
            if temp_score < best_score then 
            (
              best_score = temp_score;
              val () = array_copy(temp_array, best_array)
            )
            loop_shuffle(sizeint, diff+1, 0)
          end
        )
        else
        (
          temp_array[(curr + diff) % sizeint]:= array[curr]
          val () = loop_shuffle(sizeint, diff, curr+1)
        )
      )
    )
  in
    loop_shuffle(sizeint, 1, 0)
  end
)
in

(* ****** ****** *)

implement
array_copy(from, to) =
(
  let sizeint = g0uint2int_size_int(from.size())
  fun loop_copy(sizeint: int, pos: int): void =
  (
    if pos <= sizeint -1 then
    (
      to[pos]:= from[pos]
      loop_copy(sizeint, pos+1)
    )
    else ()
  )
  in
    loop_copy(sizeint, 0)
  end
)

(* ****** ****** *)

implement main0 () = 
{
  best_shuffle("abracadabra")
  best_shuffle("seesaw")
  best_shuffle("elk")
  best_shuffle("grrrrrr")
  best_shuffle("up")
  best_shuffle("a")
}