//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)

extern
fun
pan_check(sentence: string): bool

(* ****** ****** *)

implement
pan_check(sentence) (* bool *) =
(
  let
  
    val alphabet = arrszref_make_elt(g0int2uint_int_size(26), 0);
    val arraysizeint = g0uint2int_size_int(sentence.size());
    val sensizeint = g0uint2int_size_int(string_length(sentence));
    
    fun isfull(array: arrszref int, pos: int): bool =
    (
      if pos > arraysizeint-1 then true
      else if array[pos] = 0 then false
      else isfull(array, pos+1)
    )
    
    let fun loop_write(pos: int): void =
    
      if pos > sensizeint - 1 then ()
      else
      (
        case string_get_at(pos) of   //not exaustiveness satisfied
        | a => alphabet[0]:= 1
        | b => alphabet[1]:= 1
        | c => alphabet[2]:= 1
        | d => alphabet[3]:= 1
        | e => alphabet[4]:= 1
        | f => alphabet[5]:= 1
        | g => alphabet[6]:= 1
        | h => alphabet[7]:= 1
        | i => alphabet[8]:= 1
        | j => alphabet[9]:= 1
        | k => alphabet[10]:= 1
        | l => alphabet[11]:= 1
        | m => alphabet[12]:= 1
        | n => alphabet[13]:= 1
        | o => alphabet[14]:= 1
        | p => alphabet[15]:= 1
        | q => alphabet[16]:= 1
        | r => alphabet[17]:= 1
        | s => alphabet[18]:= 1
        | t => alphabet[19]:= 1
        | u => alphabet[20]:= 1
        | v => alphabet[21]:= 1
        | w => alphabet[22]:= 1
        | x => alphabet[23]:= 1
        | y => alphabet[24]:= 1
        | z => alphabet[25]:= 1
        | _ => ()
        loop_write(pos+1)
      )
    
    in
      loop_write(0)
    end
  
  in
    isfull(alphabet, 0)
  end
)


(* ****** ****** *)

implement main0 () =
(
  println!("The quick brown fox jumps over the lazy dog. => ", pan_check("The quick brown fox jumps over the lazy dog."));
  println!("abcdefg hijklmn opqrst uvwxyz => ", pan_check("abcdefg hijklmn opqrst uvwxyz"));
  println!("abcdefg => ", pan_check("abcdefg"));
)