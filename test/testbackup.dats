//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
#include "share/HATS/atspre_staload_libats_ML.hats"
//

fun
test(): void = () where
{

val () = println!("hello test!");
  
  (* ******************* *)
  (* ****** array ****** *)
  (* ******************* *)
  
//Declare an array
val arr = arrszref($arrpsz{int}(1,2,3))

(*
val arr2 = arrszref_make_elt<int>(i2sz(10), 88);

val () = let fun change(): void = 
(
  arr2[5]:= 99
)
in
  change()
end

val () = println!("Array2 ", arr2[5]);
*)

  //get at
val () = println!("Array get at ",arr[1]);
  
  //get size
val () = println!("Array size ",sz2i(arr.size()));
  
  //Traverse an array
val () = 
let
fun loop_array(array: arrszref int, pos: int): void =
  (
    if pos > g0uint2int_size_int(array.size()) - 1 then ()
    else
    (
      println!(array[pos]);
      loop_array(array, pos+1);
    )
  )
in
  loop_array(arr, 0)
end  
  
  (* ******************* *)
  (* ****** string ***** *)
  (* ******************* *)
  
  //Declare a string
  val str = "really?!";
  val () = println!(str);
  
  //get at
val () = println!("String at: ",string_get_at("helloworld", 4)); // valid
  
  //get length
val () = println!("String length: ",string_length("hello"));
val () = print('a');
val () = println!("");
  
  //Traverse a string
(*
val () =
let 
fun loop_str(str: string, pos: int): void =
  (
    if pos > string_length(str) - 1 then ()
    else
    (
      println!("string loop: ", string_get_at(str, pos));
      loop_str(str, pos+1);
    )
  )
in 
  loop_str("helloworldagain", 0)
end
*)

  //String to array
  
val str_array = string_explode("helloworld");
val () = println!("after explode: ",str_array[3]);
  
  
  (* ******************* *)
  (* ****** list ******* *)
  (* ******************* *)
  
  //Construct a list
  val lst = ($list{int}(0,1,2,3,4,5,6,7,8,9))  //need to use -DATS_MEMALLOC_LIBC when compiling?
  val lst = g0ofg1(lst)
  
  val lst2 = list0_cons(1, list0_nil());
  val lst2 = list0_cons(2, lst2);
  val () = println!("hahaha lst2");
  val () = print_list0(lst2);
  val () = println!("");
  
  //get length
  val length = list0_length(lst)    //or write a recursive function?
  val () = println!("list length: ", length)
  
  //get at 
  val num = list0_get_at_exn(lst, 3)   //or write a recursive function?
  val () = println!("list at: ", num)
  
  //print the whole list
val () = print_list0(lst)          //or write a recursive function?
  
  //traverse a list
val () =
  let fun loop(lst: list0 int): void =
  (
    case lst of
    | list0_nil() => ()
    | list0_cons(x, xs) =>
      (
        println!(x);
        loop(xs)
      )
  )
  in
    loop(lst)
  end
}

implement main0 () = test()