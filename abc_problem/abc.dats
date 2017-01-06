//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"
//

typedef block = (char, char)

(* ****** ****** *)

extern
fun
can_make_word(word: string): bool

(* ****** ****** *)

implement
can_make_word(word) = 
let
  val blocklist = $list{block}(
    @('B','O'),@('X','K'),@('D','Q'),@('C','P'),
    @('N','A'),@('G','T'),@('R','E'),@('T','G'),
    @('Q','D'),@('F','S'),@('J','W'),@('H','U'),
    @('V','I'),@('A','N'),@('O','B'),@('E','R'),
    @('F','S'),@('L','Y'),@('P','C'),@('Z','M')
    )
  val blocklist = g0ofg1(blocklist)
  
  val blockstatus = arrszref_make_elt<int>(i2sz(20), 0);

  val wordlist = string_explode(word)
  
  fun loop_match(word_pos: int, block_pos: int):<cloref1> bool =
  (
    if word_pos > list0_length(wordlist) - 1 then true
    else
    (
      if block_pos > list0_length(blocklist) - 1 then false
      else
      (
        if blockstatus[block_pos] = 0 then
        (
          if
          (
            let 
              val wordchar = list0_get_at_exn(wordlist, word_pos)
              val wordchar = toupper(wordchar)
              val block = list0_get_at_exn(blocklist, block_pos)
              val blockchar0 = block.0
              val blockchar1 = block.1
            in
              wordchar = blockchar0 || wordchar = blockchar1
            end
          )
          then let val () = blockstatus[block_pos]:=1 in loop_match(word_pos+1, 0) end
          else loop_match(word_pos, block_pos+1)
        )
        else loop_match(word_pos, block_pos+1)
      )
    )
  )

in
  loop_match(0, 0)
end

(* ****** ****** *)

implement
main0 () =
(
  println!("A: ", can_make_word("A"));
  println!("BarK: ", can_make_word("BarK"));
  println!("BOOK: ", can_make_word("BOOK"));
  println!("TReat: ", can_make_word("TReat"));
  println!("CommoN: ", can_make_word("CommoN"));
  println!("squAD: ", can_make_word("squAD"));
  println!("CONFUSE: ", can_make_word("CONFUSE"));
)