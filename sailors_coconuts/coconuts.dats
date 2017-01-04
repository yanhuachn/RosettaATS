//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)

extern
fun
valid(people: int, coconuts: int): bool

(* ****** ****** *)

implement
valid(people, coconuts) (* bool *) = 
(
  let fun loop(people: int, coconuts: int, times: int): bool =
  (
    if times = people+1 then   // morning
    (
      if coconuts % people = 0 then true else false
    )
    else  // midnight
    (
      if coconuts % people != 1 then false
      else loop(people, (coconuts/people)*(people-1), times+1)
    )
  )
  in
    loop(people, coconuts, 1)
  end
)

(* ****** ****** *)

implement main0 () = 
(
  let fun loop(people: int, coconuts: int): void =
  (
    if valid(people, coconuts) 
      then println!(people, " sailors and ", coconuts, " coconuts")
    else loop(people, coconuts+1)
  )
  in
  (
    loop(5, 1);
    loop(6, 1);
    loop(7, 1);
  )
  end
)