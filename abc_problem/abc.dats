//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

typedef block = (char, char, int) //int as flag

(* ****** ****** *)

extern
fun
can_make_word(word: string): bool

(* ****** ****** *)

implement
can_make_word(word) = 
(
  let
  (
    val block_list: list0(block) = 
      cons0(('B','O',0), cons0(('X','K',0), ('D','Q',0) ::
      ('C','P',0),('N','A',0),('G','T',0),('R','E',0),('T','G',0)
      ('Q','D',0),('F','S',0),('J','W',0),('H','U',0),('V','I',0)
      ('A','N',0),('O','B',0),('E','R',0),('F','S',0),('L','Y',0)
      ('P','C',0),('Z','M',0)
    val block_array: arrszref(block) = 
      arrszref_make_elt(g0in2uint_int_size(20),('0','0',0))
    val () = array_copy_from_list<block>(block_array, block_list)
    
    fun
    match(word: string, word_at: int, barray: arrszref(block), block_at: int): bool =
    (
      if word_at > string_length(word) - 1 then true
      else if block_at > 19 then false //abort, at least one letter dosn't match
      else
      (
        if barray[block_at].2 = 1  //the block is already used
        then match(word, word_at, barray, block_at+1)
        else
        (
          if string_get_at(word_at) = barray[block_at].0 || 
            string_get_at(word_at) = barray[block_at].1
          then let
            barray[block_at].2 = 1
          in
            match(word, word_at+1, barray, 0)  //find a match, move to next char
        )
      )
    )
  )
  in
    match(word, 0, block_array, 0)
  end
)

(* ****** ****** *)

implement
main0 () =
(
  val () = println!("A: ", can_make_word("A"));
  val () = println!("BARK: ", can_make_word("BARK"));
  val () = println!("BOOK: ", can_make_word("BOOK"));
  val () = println!("TREAT: ", can_make_word("TREAT"));
  val () = println!("COMMON: ", can_make_word("COMMON"));
  val () = println!("SQUAD: ", can_make_word("SQUAD"));
  val () = println!("CONFUSE: ", can_make_word("CONFUSE"));
)