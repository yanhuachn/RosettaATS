//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"
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
  
    val alphabet = arrszref_make_elt<int>(g0int2uint_int_size(26), 0)
    val arraysizeint = g0uint2int_size_int(alphabet.size())
    val sensizeint = g0uint2int_size_int(string_length(sentence))
    val senlist = string_explode(sentence)
    
    fun isfull(array: arrszref int, pos: int): bool =
    (
      if pos > arraysizeint - 1 then true
      else if array[pos] = 0 then false
      else isfull(array, pos+1)
    )
    
    
    fun myc2i(c: char): int =
      let
        val ab = "abcdefghijklmnopqrstuvwxyz"
        val ablist = string_explode(ab)
        fun loop(res: int):<cloref1> int =
          if res > sz2i(string_length(ab)) - 1 then ~1
          else
          (
            if list0_get_at_exn(ablist, res) = c then res
            else loop(res+1)
          )
      in
        loop(0)
      end
    
    
    
    val () = let fun loop_write(pos: int): void =
    (
      if pos > sensizeint - 1 then ()
      else
      (
        case tolower(list0_get_at_exn(senlist, pos)) of
        | 'a' => alphabet[0]:= 1
        | 'b' => alphabet[1]:= 1
        | 'c' => alphabet[2]:= 1
        | 'd' => alphabet[3]:= 1
        | 'e' => alphabet[4]:= 1
        | 'f' => alphabet[5]:= 1
        | 'g' => alphabet[6]:= 1
        | 'h' => alphabet[7]:= 1
        | 'i' => alphabet[8]:= 1
        | 'j' => alphabet[9]:= 1
        | 'k' => alphabet[10]:= 1
        | 'l' => alphabet[11]:= 1
        | 'm' => alphabet[12]:= 1
        | 'n' => alphabet[13]:= 1
        | 'o' => alphabet[14]:= 1
        | 'p' => alphabet[15]:= 1
        | 'q' => alphabet[16]:= 1
        | 'r' => alphabet[17]:= 1
        | 's' => alphabet[18]:= 1
        | 't' => alphabet[19]:= 1
        | 'u' => alphabet[20]:= 1
        | 'v' => alphabet[21]:= 1
        | 'w' => alphabet[22]:= 1
        | 'x' => alphabet[23]:= 1
        | 'y' => alphabet[24]:= 1
        | 'z' => alphabet[25]:= 1
        | _ => ();
        
        loop_write(pos+1);
      )
    )
    in
      loop_write(0);
    end
  
  in
    isfull(alphabet, 0)
  end
)


(* ****** ****** *)

implement main0 () =
(
  let 
    (* ****** INPUT AREA ****** *)
    val str1 = "The quick brown fox jumps over the lazy dog."
    val str2 = "abcdefg hijklmn opqrst uvwxyz"
    val str3 = "abcdefg"
  in
  (
    println!(str1, " -> ",pan_check(str1));
    println!(str2, " -> ",pan_check(str2));
    println!(str3, " -> ",pan_check(str3));
  )
  end
)