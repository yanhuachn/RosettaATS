//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//

implement main0 = let
(
  fun 
  print_month_title(month: int): void =
  (
    val () = println!("----------------------") //month divider
    val month_name: string = 
      case month of
      | 1 => "Jan" | 2 => "Feb" | 3 => "Mar" | 4 => "Apr"
      | 5 => "May" | 6 => "Jun" | 7 => "Jul" | 8 => "Aug"
      | 9 => "Sep" | 10 => "Oct" | 11 => "Nov" | 12 => "Dec"
    val () = println!("         ",month_name,"         ")
    val () = println!(" Su Mo Tu We Th Fr Sa")
  )

  fun 
  find_startweekdayof_year(year: int): int =
  (
    (* ****** MISSING PART I ****** *)
  )
  
  fnx
  year_loop(year:int, month:int, start_weekday, weekday, days, day): void =
  (
    if month = 1 then
    (
      print_month_title(1);
      let val start_weekday = find_startweekdayof_year(year)
      in
        print_month_content(year, 1, start_weekday, start_weekday, 31, 1)
      end
    )
    else if month <= 12 then
    (
      print_month_title(month)
      print_month_content(year, month, start_weekday, weekday, days, day)
    )
    else ()
  )
  and
  print_month_content(year:int, month:int, start_weekday, weekday, days, day): void =
  (
    //printing each day
    if day <= days then 
    (
      if day = 1 then 
        let fun loop_blank(startwday: int, i: int): void =
          if i < startwday then
          (
            println!("   ")
            loop_blank(startwday, i+1)
          )
        in
          loop_blank()
        end
      val () = print(' ')
      if day < 10 then 
        val () = print(' ')
      val () = print(day)
      val () = let
          val newweekday = if weekday = 7 then 1 else weekday+1
        in
          print_month_content(year, month, start_weekday, newweekday, days, day+1)
        end
    )
    else
    (
    //finish the month
    (* ****** MISSING PART II ****** *)
    )
    
  )
  
  fun
  print_year(year: int): void =
  (
    year_loop(year, 1, 1, 1, 31, 1)
  )
)

in
  print_year(2016)
end