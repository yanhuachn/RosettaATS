//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

fun
test(): void =
(
  println!("hello test!");
  
  (* ******************* *)
  (* ****** array ****** *)
  (* ******************* *)
  
  //Declare an array
  val arr = arrayref($arrpsz{int}(1,2,3));
  
  //get at
  println!(arr[1]);
  
  //get size
  println!(sz2i(arr.size()));
  
  //Traverse an array
  let fun loop_array(array: arrayref int, pos: int): void =
  (
    if pos > g0uint2int_size_int(array.size()) - 1 then ()
    else
    (
      println!(array[pos]);
      loop(array, pos+1);
    )
  )
  in
    loop_array(arr, 0)
  
  //Remove the last element from array
  let fun remove_last(array: arrayref int): arrayref int =
  (
    let
    
      val new_array = arrszref_make_elt(i2sz(sz2i(array.size())-1)), 0)
    
      let fun loop(pos: int) =
      (
        if pos > sz2i(new_array.size())-1 then
        (
          new_array[pos]:= array[pos]
          loop(pos+1)
        )
        else()
      )
      in
        loop(0)
      end
      
    in
      new_array
    end
  )
  in
    remove_last(arr)
  end
  
  //shuffle an array ?
  
  //?
  
  
  (* ******************* *)
  (* ****** string ***** *)
  (* ******************* *)
  
  //Declare a string
  //val str = "hello world!";
  
  //get at
  println!(string_get_at("helloworld", 4)); // valid
  
  //get length
  println!(string_length("hello"));
  
  print('a');
  println!("");
  
  //Traverse a string
  
  let fun loop_str(str: string, pos: int): void =
    if (pos > string_length(str)-1) then ()
    else
    (
      println!(string_get_at(str, pos));
      loop_str(str, pos+1);
    )
  in 
    loop_str("helloworldagain", 0)
  end
  
  
  //String to array
  
  val str_array = string_explode("helloworld");
  println!("after explode: ",str_array[3]);
  
  
  (* ******************* *)
  (* ****** list ******* *)
  (* ******************* *)
  
  //Construct a list
  val lst = ($list {int} (0,1,2,3,4,5,6,7,8,9))  //need to use -DATS_MEMALLOC_LIBC when compiling?
  
  //get length
  val length = list0_length(lst)    //or write a recursive function?
  
  //get at 
  val num = list0_get_at_exn(lst, 3)   //or write a recursive function?
  
  //print the whole list
  print_list0(lst)          //or write a recursive function?
  
  //traverse a list
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
  
  
)

implement main0 () = test()