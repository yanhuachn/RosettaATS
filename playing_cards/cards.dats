//
#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"
//


implement main0 () = 
(
  init_deck();
  //shuffle_deck();
  //deal_deck();
  print_deck();
)
where 
{

 //end of [main0 where]

(* enum type: pip and suit *)

datatype suit =
  | Diamond of () | Spade of () | Heart of () | Club of () | Empty of ()
  
datatype pip =
  | Two of () | Three of () | Four of () | Five of () | Six of () 
  | Seven of () | Eight of () | Nine of () | Ten of () | Jack of () 
  | Queen of () | King of () | Ace of () | Empty of ()


(* ****** define card ****** *)

typedef card = @(suit, pip)


(* ****** create empty deck ****** *)

val deck = arrszref_make_elt<card>(i2sz(52), @(Empty(),Empty()))
  
(* ****** init_deck ****** *)

fun init_deck(): void = let
  
  fnx
  loop_suit(s: int): void =
    if s < 4 then loop_pip(s, 0) else ()
  and
  loop_pip (s: int, p: int): void = 
    (
      deck[s*13+p]:= let
        val suit = 
          if s = 0 then Diamond()
          else if s = 1 then Spade()
          else if s = 2 then Heart()
          else if s = 3 then Club()
          else Empty()
        val pip =
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
          else Empty()
        in
          @(suit, pip);
        end
      
      let val() =
        if p < 12 then loop_pip(s, p+1) else loop_suit(s+1)
      in
      end
    )
  in
    loop_suit(0)
  end
  // end of [init_deck]

(*
(* ****** shuffle_deck ****** *)
//make a random order of the original deck
//my approach here is to create a temp deck to hold the original content, 
//then put them back to a random position in "deck" variable, since it's
//considered a global variable.

fun shuffle_deck
  (deck: arrszref card ): void =
  (
    let 
      val size: asz = deck.size()
      val sizeint: int = g0uint2int_size_int(deck.size())
    in
      let
        val tempdeck = arrszref_make_elt(size, (Empty(),Empty()))
      in
        let 
        fun loop_copy(sizeint: int, pos: int): void = 
          if pos < sizeint then
          (
            tempdeck[pos]:= deck[pos];
            loop_copy(sizeint, pos+1)
          )
          else ()
          //end of fun [loop_copy]
        fun loop_back(sizeint: int, pos: int): void =
          if pos < sizeint then
          (
            let
              val rand_pos = $extfcall(int, "rand") % sizeint
            in
              if deck[rand_pos] = (Empty(), Empty()) then
              (
                deck[rand_pos]: = tempdeck[pos];
                loop_back(sizeint, pos+1)
              )
              else loop_back(sizeint, pos)
            end
          )
          else ()
          //end of fun [loop_back]
        in
          loop_copy(sizeint, 0);
          deck = szref_make_elt(size, (Empty(),Empty())); //not sure about this..
          loop_back(sizeint, 0)
        end
      end
    end
  )


(* ****** deal_deck ****** *)
//remove the last element from the array
//my approach here is to create a temp deck with shorter size holding the
//content after dealing, then paste it back to the newly declared variable
//"deck" with shorter size. Since we consider "deck" a global variable.

fun deal_deck 
  (deck: arrszref card ): void =
  (
    let
      val oldsize: asz = deck.size()
      val oldsizeint: int = g0uint2int_size_int(deck.size())
      val newsize: asz = g0int2uint_int_size(g0uint2int_size_int(deck.size())-1)
      val newsizeint: int = g0uint2int_size_int(deck.size())-1
    in
      let
        val tempdeck = arrszref_make_elt(newsize, (Empty(),Empty()))
      in
        let
          fun loop_copy(sizeint: int, pos: int): void =
            if pos < sizeint then
            (
              tempdeck[pos]:= deck[pos];
              loop_copy(sizeint, pos+1) 
            )
            else ()
            //end of fun loop_copy
          fun loop_back(sizeint: int, pos: int) =
            if pos < sizeint then
            (
              deck[pos]:= tempdeck[pos];
              loop_back(sizeint, pos+1)
            )
            else ()
            //end of fun loop_back
        in
          loop_copy(newsizeint, 0);
          deck = arrszref_make_elt(newsize, (Empty(),Empty()));
          loop_back(newsizeint, 0)
        end
      end
    end
  )// end of deal_deck

*)

(* ****** print_deck ****** *)

fun print_deck(): void =
  let 
    fun loop_print(size:int, index:int): void = 
    (
      let
        val str_suit =
          case deck[index].0 of
          | Diamond() => "D"
          | Spade() => "S"
          | Heart() => "H"
          | Club() => "C"
        val str_pip = 
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
        println!(str_suit, str_pip)
      end
      
      let val () =
        if index < size-1 then loop_print(size, index+1)
      in
      end
    )
  in 
    loop_print(sz2i(deck.size()), 0)
  end
  //end of [print_deck]
  
(* ****** ****** *)

}
