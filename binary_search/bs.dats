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
  if high < low then println!("no")
  else
  (
    let val mid: int = (low + high) / 2
    in
      if array[mid] = target then
      (
        println!("yes ", mid)
      )
      else if array[mid] < target then
      (
        binary_search(array, target, mid+1, high)
      )
      else //array[mid] > target
      (
        binary_search(array, target, low, mid-1)
      )
    end
  )
)

implement main0 () = let
(
  // Generate a sorted array manually, to simplyfy, suppose no duplicate
  val array: arrszref(int) = arrszref_make_elt(i2sz(20), 0)
  array[0]:= 1
  array[1]:= 3
  array[2]:= 7
  array[3]:= 12
  array[4]:= 18
  array[5]:= 33
  array[6]:= 34
  array[7]:= 35
  array[8]:= 42
  array[9]:= 44
  array[10]:= 47
  array[11]:= 60
  array[12]:= 68
  array[13]:= 71
  array[14]:= 73
  array[15]:= 75
  array[16]:= 86
  array[17]:= 87
  array[18]:= 90
  array[19]:= 99
)
in
(
  binary_search(array, 25, 0, 19);  //find 25
  binary_search(array, 50, 0, 19);  //find 50
  binary_search(array, 75, 0, 19);  //find 75
)
end