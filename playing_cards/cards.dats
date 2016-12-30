
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

(* enum type: pip and suit *)

datatype suit =
  | Diamond of () | Spade of () | Heart of () | Club of ()
  
datatype pip =
  | Two of () | Three of () | Four of () | Five of () | Six of () 
  | Seven of () | Eight of () | Nine of () | Ten of () | Jack of () 
  | Queen of () | King of () | Ace of ()

(* define card *)

typedef card = (suit, pip)


implement main0 () = (init_deck();shuffle_deck();deal_deck();print_deck()) where
{


(* create empty deck *)

val deck = arrszref_make_elt(g0int2uint_int_size(52), (Spade(),Ace()))
  
(* init_deck *)

fun init_deck
  (deck: arrszref card ): void = let
  
  fnx
  loop_suit //outer loop for suits
    (s: nat): void =
    if s < 4 then loop_pip(s, 0) else ()
  //end of [loop_suit]
  and
  loop_pip //inner loop for pips
    (s: nat, p: nat): void = 
    (
      deck[s*13+p]:= let
        val suit: suit = 
          if s = 0 then Diamond()
          else if s = 1 then Spade()
          else if s = 2 then Heart()
          else if s = 3 then Club()
          else ()
        val pip: pip =
          if p = 0 then Ace()
          else if p = 1 then Two()
          else if p = 2 then Three()
          else if p = 3 then Four()
          else if p = 4 then Five()
          else if p = 5 then Six()
          else if p = 6 then Seven()
          else if p = 7 then Eight()
          else if p = 8 then Nine()
          else if p = 9 then Ten()
          else if p = 10 then Jack()
          else if p = 11 then Queen()
          else if p = 12 then King()
          else ()
      in
        (suit, pip)
      end
      
      if p < 12 then loop_pip(s, p+1)
      else if s < 3 then loop_suit(s+1)
      else ()
    )
  in
    loop_suit(0)
  end
  // end of [init_deck]

(* shuffle_deck *)

fun shuffle_deck
  (deck: arrszref card ): void =
  (
  
  )

(* deal_deck *)

fun deal_deck
  (deck: arrszref card ): void =
  (
  
  )

(* print_deck *)

fun print_deck
  (deck: arrszref card ): void =
    let 
      fun loop_print(size:int, index:int): void = 
      (
        let
          val str_suit: string =
            case deck[index].0 of
            | Diamond() => "D"
            | Spade() => "S"
            | Heart() => "H"
            | Club() => "C"
          val str_pip: string = 
            case deck[index].1 of
            | Ace() => "A"
            | Two() => "2"
            | Three() => "3"
            | Four() => "4"
            | Five() => "5"
            | Six() => "6"
            | Seven() => "7"
            | Eight() => "8"
            | Nine() => "9"
            | Ten() => "10"
            | Jack() => "J"
            | Queen() => "Q"
            | King() => "K"
        in
          val () = println! (str_suit, str_pip, " ")
        end
      
        if index < size-1 then loop_print(size, index+1)
      )
    in 
      loop_print(deck.size(), 0)
  //end of [print_deck]
  
} //end of [main0 where]