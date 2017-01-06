//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

//
// Given a sorted array and an integer, find whether the integer is in the array
// or not, if yes, output the index.
//

(* ****** ****** *)

extern
fun binary_search(array: arrszref(int), target: int, low: int, high: int): void

(* ****** ****** *)

implement
binary_search(array, target, low, high) =
(
  if high < low then println!("Sorry, not exist!")
  else
  (
    let val mid = (low + high) / 2
    in
    (
      if array[mid] = target then
      (
        println!("Found it! Index: ", mid)
      )
      else if array[mid] < target then
      (
        binary_search(array, target, mid+1, high)
      )
      else //array[mid] > target
      (
        binary_search(array, target, low, mid-1)
      )
    )
    end
  )
)

implement main0 () = let

  // Generate a sorted array manually, to simplyfy, suppose no duplicate
  val array = arrszref_make_elt<int>(i2sz(20), 0)
  val () = array[0]:= 1
  val () = array[1]:= 3
  val () = array[2]:= 7
  val () = array[3]:= 12
  val () = array[4]:= 18
  val () = array[5]:= 33
  val () = array[6]:= 34
  val () = array[7]:= 35
  val () = array[8]:= 42
  val () = array[9]:= 44
  val () = array[10]:= 47
  val () = array[11]:= 60
  val () = array[12]:= 68
  val () = array[13]:= 71
  val () = array[14]:= 73
  val () = array[15]:= 75
  val () = array[16]:= 86
  val () = array[17]:= 87
  val () = array[18]:= 90
  val () = array[19]:= 99

in
(
  binary_search(array, 25, 0, 19);  //find 25
  binary_search(array, 50, 0, 19);  //find 50
  binary_search(array, 75, 0, 19);  //find 75
)
end