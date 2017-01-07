//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

(* ****** ****** *)

extern
fun
is_leapyear(year: int): bool

extern
fun
ymstartweekday(year: int, month: int): int

extern
fun
print_ym(year: int, month: int): void

(* ****** ****** *)

implement
is_leapyear(year) =
(
  if year % 400 = 0 then true
  else
  (
    if year % 100 = 0 then false
    else
    (
      if year % 4 = 0 then true
      else false
    )
  )
)

implement
ymstartweekday(year, month) =
(
  let
    fun loop(y: int, m: int, res: int):<cloref1> int =
    (
      if y = year && m = month then res  //target year&month
      else
      (
        case m of
        | 1 => loop(y, m+1, (res+31)%7)
        | 2 => if is_leapyear(y) then loop(y, m+1, res+29%7) else loop(y, m+1, res+28%7)
        | 3 => loop(y, m+1, (res+31)%7)
        | 4 => loop(y, m+1, (res+30)%7)
        | 5 => loop(y, m+1, (res+31)%7)
        | 6 => loop(y, m+1, (res+30)%7)
        | 7 => loop(y, m+1, (res+31)%7)
        | 8 => loop(y, m+1, (res+31)%7)
        | 9 => loop(y, m+1, (res+30)%7)
        | 10 => loop(y, m+1, (res+31)%7)
        | 11 => loop(y, m+1, (res+30)%7)
        | 12 => loop(y+1, 1, (res+31)%7)
        | _ => ~1
      )
    )
  in
    loop(1900, 1, 1)
  end
  
)


(* ****** ****** *)

implement
print_ym(year: int, month: int): void =
(
  let
    val startweekday = ymstartweekday(year, month)
    
    fun print_mtitle(month: int): void =
    (
      case month of
      | 1 => println!("        JAN      ")
      | 2 => println!("        FEB      ")
      | 3 => println!("        MAR      ")
      | 4 => println!("        APR      ")
      | 5 => println!("        MAY      ")
      | 6 => println!("        JUN      ")
      | 7 => println!("        JUL      ")
      | 8 => println!("        AUG      ")
      | 9 => println!("        SEP      ")
      | 10 => println!("        OCT      ")
      | 11 => println!("        NOV      ")
      | 12 => println!("        DEC      ")
      | _ => ();
    )
    
    fun print_wtitle(): void =
    (
      println!("SU MO TU WE TH FR SA");
    )
    
    fun print_pre(startweekday: int): void =
    (
      case startweekday of
      | 0 => ()
      | 1 => print("   ")
      | 2 => print("      ")
      | 3 => print("         ")
      | 4 => print("            ")
      | 5 => print("               ")
      | 6 => print("                  ")
      | _ => ()
    )
    
    fun print_day(date: int, weekday: int):<cloref1> void =
    (
      let
        val lastdate =
          if month = 1 then 31
          else
          (
            if month = 2 && is_leapyear(year) then 29
            else
            (
              if month = 2 then 28
              else if month = 3 then 31
              else if month = 4 then 30
              else if month = 5 then 31
              else if month = 6 then 30
              else if month = 7 then 31
              else if month = 8 then 31
              else if month = 9 then 30
              else if month = 10 then 31
              else if month = 11 then 30
              else if month = 12 then 31
              else 1
            )
          )
      in
        if date > lastdate then println!(" ")
        else
        (
          if weekday = 6 then 
          (
            if date >= 10 then
            (
              println!(date, " ");
              print_day(date+1, 0);
            )
            else
            (
              print(" ");
              println!(date, " ");
              print_day(date+1, 0);
            )
          )
          else
          (
            if date >= 10 then
            (
              print(date);
              print(" ");
              print_day(date+1, weekday+1);
            )
            else
            (
              print(" ");
              print(date);
              print(" ");
              print_day(date+1, weekday+1);
            )
          )
        )
      end
    )
  
  in
  (
    print_mtitle(month);
    print_wtitle();
    print_pre(startweekday);
    print_day(1, startweekday);
    println!("--------------------");
  )
  end
)


(* ****** ****** *)

implement main0 () = 
(
  let fun loop(year: int, month: int): void =
  (
    if month > 12 then ()
    else
    (
      if month = 1 then
      (
        println!("      ","YEAR ", year);
        println!("--------------------");
        print_ym(year, month);
        loop(year, month+1);
      )
      else
      (
        print_ym(year, month);
        loop(year, month+1);
      )
    )
  )
  in
    loop(2017, 1)   (* ****** input YEAR ****** *)
  end
)
