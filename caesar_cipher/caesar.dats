//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)

extern
fun
match(letter: char, diff: int): char

(* ****** ****** *)

extern
fun
caesar_encode(text: string, diff: int): string

(* ****** ****** *)

extern
fun
caesar_decode(text: string, diff: int): string

(* ****** ****** *)

implement
match(letter, diff) = 
(
  let 
  
    val letternum = 
      case letter of
      | 'a' => 1
      | 'b' => 2
      | 'c' => 3
      | 'd' => 4
      | 'e' => 5
      | 'f' => 6
      | 'g' => 7
      | 'h' => 8
      | 'i' => 9
      | 'j' => 10
      | 'k' => 11
      | 'l' => 12
      | 'm' => 13
      | 'n' => 14
      | 'o' => 15
      | 'p' => 16
      | 'q' => 17
      | 'r' => 18
      | 's' => 19
      | 't' => 20
      | 'u' => 21
      | 'v' => 22
      | 'w' => 23
      | 'x' => 24
      | 'y' => 25
      | 'z' => 26
      | _ => 0
      
    val outputnum =
    (
      if (letternum + diff) = 26 then 26   // What is wrong here...?
      else (letternum+diff)%26
    )
  
  in 
    case outputnum of
    | 1 => 'a'
    | 2 => 'b'
    | 3 => 'c'
    | 4 => 'd'
    | 5 => 'e'
    | 6 => 'f'
    | 7 => 'g'
    | 8 => 'h'
    | 9 => 'i'
    | 10 => 'j'
    | 11 => 'k'
    | 12 => 'l'
    | 13 => 'm'
    | 14 => 'n'
    | 15 => 'o'
    | 16 => 'p'
    | 17 => 'q'
    | 18 => 'r'
    | 19 => 's'
    | 20 => 't'
    | 21 => 'u'
    | 22 => 'v'
    | 23 => 'w'
    | 24 => 'x'
    | 25 => 'y'
    | 26 => 'z'
    | 0 => ' '
    | _ => ' '
  end
)

(* ****** ****** *)
(*
implement
caesar_encode(text, diff) =
(
  let
  
    val outputlist = list0_nil(char)
    val textsize = sz2i(string_length(text))
    fun
    loop_encode(size: int, pos: int, input: list0 char, output: list0 char): list0 char =
    (
      if pos >= size then output
      else
      (
        let
        
          val input = list_reverse(input)
          val output = 
            case input of
            | list0_nil() => output
            | list0_cons(x, xs) => list0_cons(match(x, diff), output)
          val input = 
            case input of
            | list0_nil() => input
            | list0_cons(x, xs) => list_reverse(xs)
        
        in
          loop_encode(size, pos+1, input, output)
        end
      )
    )
  
  in
    string_implode(loop_encode(textsize, 0, string_explode(text), list0_nil(char)))
  end
)
*)
(* ****** ****** *)

(*
implement
caesar_decode(text, diff) =
(
  let
  
    val outputlist = list0_nil(char)
    val textsize = sz2i(string_length(text))
    fun
    loop_decode(size: int, pos: int, input: list0 char, output: list0 char): list0 char =
    (
      if pos >= size then output
      else
      (
        let
        
          val input = list_reverse(input)
          val output = 
            case input of
            | list0_nil() => output
            | list0_cons(x, xs) => list0_cons(match(x, ~diff), output)
          val input = 
            case input of
            | list0_nil() => input
            | list0_cons(x, xs) => list_reverse(xs)
        
        in
          loop_decode(size, pos+1, input, output)
        end
      )
    )
  
  in
    string_implode(loop_decode(textsize, 0, string_explode(text), list0_nil(char)))
  end
)
*)

(* ****** ****** *)

implement main0 () =
(
let
  var text = "the quick brown fox"
  val text_encoded = caesar_encode(text, 3)
in
  (
    println!("original: ", text);
    println!(match('c', 3));
    println!("encoded: ", text_encoded)
    println!("decoded: ", caesar_decode(text_encoded, 3))
  )
end
)


//// <references>
fun{}
string_explode(x0: string):<> list0(char)
fun{}
string_implode(cs: list0(char)):<> string

