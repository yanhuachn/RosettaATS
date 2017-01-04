//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)

extern
fun
c2k(c: double): double

extern
fun
r2k(r: double): double

extern 
fun
k2c(k: double): double

extern 
fun
k2r(k: double): double

extern 
fun
f2r(f: double): double

extern 
fun
r2f(r: double): double

extern 
fun
c2f(c: double): double

extern 
fun
f2c(f: double): double

extern 
fun
c2r(c: double): double

extern 
fun
r2c(r: double): double

extern 
fun
k2f(k: double): double

extern 
fun
f2k(f: double): double

(* ****** ****** *)

implement
c2k(c) = c + 273.15

implement
k2c(k) = k - 273.15

implement
k2r(k) = (k / 5) * 9

implement
r2k(r) = (r / 9) * 5

implement
r2f(r) = r - 459.67

implement
f2r(f) = f + 459.67

implement
c2r(c) = k2r(c2k(c))

implement
r2c(r) = k2c(r2k(r))

implement
k2f(k) = r2f(k2r(k))

implement
f2k(f) = r2k(f2r(f))

implement
c2f(c) = r2f(k2r(c2k(c)))

implement
f2c(f) = k2c(r2k(f2r(f)))


(* ****** ****** *)

implement main0 () =
(
  println!("K ", 21.00);
  println!("C ", k2c(21.00));
  println!("F ", k2f(21.00));
  println!("R ", k2r(21.00));
)