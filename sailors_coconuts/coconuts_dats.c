/*
**
** The C code is generated by [ATS/Postiats-0-2-13]
** The starting compilation time is: 2017-1-3: 23h: 9m
**
*/

/*
** include runtime header files
*/
#ifndef _ATS_CCOMP_HEADER_NONE_
#include "pats_ccomp_config.h"
#include "pats_ccomp_basics.h"
#include "pats_ccomp_typedefs.h"
#include "pats_ccomp_instrset.h"
#include "pats_ccomp_memalloc.h"
#ifndef _ATS_CCOMP_EXCEPTION_NONE_
#include "pats_ccomp_memalloca.h"
#include "pats_ccomp_exception.h"
#endif // end of [_ATS_CCOMP_EXCEPTION_NONE_]
#endif /* _ATS_CCOMP_HEADER_NONE_ */


/*
** include prelude cats files
*/
#ifndef _ATS_CCOMP_PRELUDE_NONE_
//
#include "prelude/CATS/basics.cats"
#include "prelude/CATS/integer.cats"
#include "prelude/CATS/pointer.cats"
#include "prelude/CATS/integer_long.cats"
#include "prelude/CATS/integer_size.cats"
#include "prelude/CATS/integer_short.cats"
#include "prelude/CATS/bool.cats"
#include "prelude/CATS/char.cats"
#include "prelude/CATS/float.cats"
#include "prelude/CATS/integer_ptr.cats"
#include "prelude/CATS/integer_fixed.cats"
#include "prelude/CATS/memory.cats"
#include "prelude/CATS/string.cats"
#include "prelude/CATS/strptr.cats"
//
#include "prelude/CATS/fprintf.cats"
//
#include "prelude/CATS/filebas.cats"
//
#include "prelude/CATS/list.cats"
#include "prelude/CATS/option.cats"
#include "prelude/CATS/array.cats"
#include "prelude/CATS/arrayptr.cats"
#include "prelude/CATS/arrayref.cats"
#include "prelude/CATS/matrix.cats"
#include "prelude/CATS/matrixptr.cats"
//
#endif /* _ATS_CCOMP_PRELUDE_NONE_ */
/*
** for user-supplied prelude
*/
#ifdef _ATS_CCOMP_PRELUDE_USER_
//
#include _ATS_CCOMP_PRELUDE_USER_
//
#endif /* _ATS_CCOMP_PRELUDE_USER_ */
/*
** for user2-supplied prelude
*/
#ifdef _ATS_CCOMP_PRELUDE_USER2_
//
#include _ATS_CCOMP_PRELUDE_USER2_
//
#endif /* _ATS_CCOMP_PRELUDE_USER2_ */

/*
staload-prologues(beg)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/basics.dats: 1534(line=44, offs=1) -- 1573(line=45, offs=32)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats: 1596(line=49, offs=1) -- 1635(line=49, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/pointer.dats: 1533(line=44, offs=1) -- 1572(line=44, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer_long.dats: 1602(line=49, offs=1) -- 1641(line=49, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer_size.dats: 1597(line=49, offs=1) -- 1636(line=49, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer_short.dats: 1603(line=49, offs=1) -- 1642(line=49, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/char.dats: 1610(line=48, offs=1) -- 1649(line=48, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/float.dats: 1636(line=50, offs=1) -- 1675(line=50, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/string.dats: 1609(line=48, offs=1) -- 1648(line=48, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/strptr.dats: 1609(line=48, offs=1) -- 1648(line=48, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/strptr.dats: 1671(line=52, offs=1) -- 1718(line=52, offs=48)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats: 1596(line=49, offs=1) -- 1635(line=49, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer_ptr.dats: 1601(line=49, offs=1) -- 1640(line=49, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer_fixed.dats: 1603(line=49, offs=1) -- 1642(line=49, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/memory.dats: 1410(line=38, offs=1) -- 1449(line=39, offs=32)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/filebas.dats: 1613(line=49, offs=1) -- 1652(line=50, offs=32)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/filebas.dats: 1675(line=54, offs=1) -- 1721(line=55, offs=39)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats: 1596(line=49, offs=1) -- 1635(line=49, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/filebas.dats: 1744(line=59, offs=1) -- 1789(line=60, offs=38)
*/
/*
/home/ubuntu/workspace/ATS2/libats/libc/SATS/stdio.sats: 1390(line=36, offs=1) -- 1437(line=39, offs=3)
*/

#include \
"libats/libc/CATS/stdio.cats"
/*
/home/ubuntu/workspace/ATS2/libats/libc/SATS/stdio.sats: 1950(line=69, offs=1) -- 1999(line=71, offs=34)
*/
/*
/home/ubuntu/workspace/ATS2/libats/libc/SATS/sys/types.sats: 1390(line=36, offs=1) -- 1441(line=39, offs=3)
*/

#include \
"libats/libc/CATS/sys/types.cats"
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/filebas.dats: 1871(line=66, offs=1) -- 1918(line=66, offs=48)
*/
/*
/home/ubuntu/workspace/ATS2/libats/libc/SATS/sys/stat.sats: 1390(line=36, offs=1) -- 1440(line=39, offs=3)
*/

#include \
"libats/libc/CATS/sys/stat.cats"
/*
/home/ubuntu/workspace/ATS2/libats/libc/SATS/sys/stat.sats: 1756(line=58, offs=1) -- 1805(line=60, offs=34)
*/
/*
/home/ubuntu/workspace/ATS2/libats/libc/SATS/sys/types.sats: 1390(line=36, offs=1) -- 1441(line=39, offs=3)
*/

#include \
"libats/libc/CATS/sys/types.cats"
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/filebas.dats: 15413(line=857, offs=1) -- 15450(line=858, offs=30)
*/
/*
/home/ubuntu/workspace/ATS2/libats/libc/SATS/stdio.sats: 1390(line=36, offs=1) -- 1437(line=39, offs=3)
*/

#include \
"libats/libc/CATS/stdio.cats"
/*
/home/ubuntu/workspace/ATS2/libats/libc/SATS/stdio.sats: 1950(line=69, offs=1) -- 1999(line=71, offs=34)
*/
/*
/home/ubuntu/workspace/ATS2/libats/libc/SATS/sys/types.sats: 1390(line=36, offs=1) -- 1441(line=39, offs=3)
*/

#include \
"libats/libc/CATS/sys/types.cats"
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/list.dats: 1529(line=44, offs=1) -- 1568(line=45, offs=32)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/list.dats: 1569(line=46, offs=1) -- 1615(line=47, offs=39)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/unsafe.dats: 1532(line=44, offs=1) -- 1566(line=44, offs=35)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/list_vt.dats: 1538(line=44, offs=1) -- 1577(line=45, offs=32)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/list_vt.dats: 1578(line=46, offs=1) -- 1624(line=47, offs=39)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/unsafe.dats: 1532(line=44, offs=1) -- 1566(line=44, offs=35)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/array.dats: 1534(line=44, offs=1) -- 1573(line=44, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/array.dats: 1574(line=45, offs=1) -- 1616(line=45, offs=43)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/arrayptr.dats: 1532(line=44, offs=1) -- 1571(line=44, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/arrayref.dats: 1532(line=44, offs=1) -- 1571(line=44, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/matrix.dats: 1535(line=44, offs=1) -- 1574(line=44, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/matrixptr.dats: 1538(line=44, offs=1) -- 1577(line=44, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/matrixref.dats: 1538(line=44, offs=1) -- 1577(line=44, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/stream.dats: 1523(line=44, offs=1) -- 1562(line=44, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/stream_vt.dats: 1523(line=44, offs=1) -- 1562(line=44, offs=40)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/tostring.dats: 1528(line=44, offs=1) -- 1567(line=45, offs=32)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/unsafe.dats: 1532(line=44, offs=1) -- 1566(line=44, offs=35)
*/
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/checkast.dats: 1531(line=44, offs=1) -- 1570(line=45, offs=32)
*/
/*
staload-prologues(end)
*/
/*
typedefs-for-tyrecs-and-tysums(beg)
*/
/*
typedefs-for-tyrecs-and-tysums(end)
*/
/*
dynconlst-declaration(beg)
*/
/*
dynconlst-declaration(end)
*/
/*
dyncstlst-declaration(beg)
*/
ATSdyncst_mac(atspre_g0int2int_int_int)
ATSdyncst_mac(atspre_g0int_eq_int)
ATSdyncst_mac(atspre_g0int_add_int)
ATSdyncst_mac(atspre_g0int_mod_int)
ATSdyncst_mac(atspre_g0int_neq_int)
ATSdyncst_mac(atspre_g0int_mul_int)
ATSdyncst_mac(atspre_g0int_div_int)
ATSdyncst_mac(atspre_g0int_sub_int)
ATSdyncst_extfun(_057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__valid, (atstkind_t0ype(atstype_int), atstkind_t0ype(atstype_int)), atstkind_t0ype(atstype_bool)) ;
ATSdyncst_mac(atspre_print_int)
ATSdyncst_mac(atspre_print_string)
ATSdyncst_mac(atspre_print_newline)
/*
dyncstlst-declaration(end)
*/
/*
dynvalist-implementation(beg)
*/
/*
dynvalist-implementation(end)
*/
/*
exnconlst-declaration(beg)
*/
#ifndef _ATS_CCOMP_EXCEPTION_NONE_
ATSextern()
atsvoid_t0ype
the_atsexncon_initize
(
  atstype_exnconptr d2c, atstype_string exnmsg
) ;
#endif // end of [_ATS_CCOMP_EXCEPTION_NONE_]
/*
exnconlst-declaration(end)
*/
/*
assumelst-declaration(beg)
*/
/*
assumelst-declaration(end)
*/
/*
extypelst-declaration(beg)
*/
/*
extypelst-declaration(end)
*/
#if(0)
ATSextern()
atstkind_t0ype(atstype_bool)
_057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__valid(atstkind_t0ype(atstype_int), atstkind_t0ype(atstype_int)) ;
#endif // end of [QUALIFIED]

ATSstatic()
atstkind_t0ype(atstype_bool)
loop_1(atstkind_t0ype(atstype_int), atstkind_t0ype(atstype_int), atstkind_t0ype(atstype_int)) ;

#if(0)
#if(0)
ATSextern()
atstkind_t0ype(atstype_bool)
ATSLIB_056_prelude__eq_g0int_int__2(atstkind_t0ype(atstyvar_type(tk)), atstkind_t0ype(atstype_int)) ;
#endif // end of [QUALIFIED]
#endif // end of [TEMPLATE]

ATSstatic()
atstkind_t0ype(atstype_bool)
ATSLIB_056_prelude__eq_g0int_int__2__1(atstkind_t0ype(atstype_int), atstkind_t0ype(atstype_int)) ;

ATSstatic()
atstkind_t0ype(atstype_bool)
ATSLIB_056_prelude__eq_g0int_int__2__2(atstkind_t0ype(atstype_int), atstkind_t0ype(atstype_int)) ;

#if(0)
#if(0)
ATSextern()
atstkind_t0ype(atstype_bool)
ATSLIB_056_prelude__neq_g0int_int__9(atstkind_t0ype(atstyvar_type(tk)), atstkind_t0ype(atstype_int)) ;
#endif // end of [QUALIFIED]
#endif // end of [TEMPLATE]

ATSstatic()
atstkind_t0ype(atstype_bool)
ATSLIB_056_prelude__neq_g0int_int__9__1(atstkind_t0ype(atstype_int), atstkind_t0ype(atstype_int)) ;

#if(0)
ATSextern()
atsvoid_t0ype
mainats_void_0() ;
#endif // end of [QUALIFIED]

ATSstatic()
atsvoid_t0ype
loop_16(atstkind_t0ype(atstype_int), atstkind_t0ype(atstype_int)) ;

/*
/home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 190(line=15, offs=6) -- 584(line=32, offs=2)
*/
/*
local: 
global: valid$0$0(level=0)
local: 
global: 
*/
ATSextern()
atstkind_t0ype(atstype_bool)
_057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__valid(atstkind_t0ype(atstype_int) arg0, atstkind_t0ype(atstype_int) arg1)
{
/* tmpvardeclst(beg) */
ATStmpdec(tmpret0, atstkind_t0ype(atstype_bool)) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 185(line=15, offs=1) -- 584(line=32, offs=2)
*/
ATSINSflab(__patsflab_valid):
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 227(line=17, offs=3) -- 582(line=31, offs=6)
*/
/*
letpush(beg)
*/
/*
letpush(end)
*/

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 551(line=30, offs=5) -- 576(line=30, offs=30)
*/
ATSINSmove(tmpret0, loop_1(arg0, arg1, ATSPMVi0nt(1))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 227(line=17, offs=3) -- 582(line=31, offs=6)
*/
/*
INSletpop()
*/
ATSfunbody_end()
ATSreturn(tmpret0) ;
} /* end of [_057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__valid] */

/*
/home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 235(line=17, offs=11) -- 541(line=28, offs=4)
*/
/*
local: loop_1$0(level=1)
global: loop_1$0(level=1)
local: 
global: 
*/
ATSstatic()
atstkind_t0ype(atstype_bool)
loop_1(atstkind_t0ype(atstype_int) arg0, atstkind_t0ype(atstype_int) arg1, atstkind_t0ype(atstype_int) arg2)
{
/* tmpvardeclst(beg) */
ATStmpdec(apy0, atstkind_t0ype(atstype_int)) ;
ATStmpdec(apy1, atstkind_t0ype(atstype_int)) ;
ATStmpdec(apy2, atstkind_t0ype(atstype_int)) ;
ATStmpdec(tmpret1, atstkind_t0ype(atstype_bool)) ;
ATStmpdec(tmp2, atstkind_t0ype(atstype_bool)) ;
ATStmpdec(tmp7, atstkind_t0ype(atstype_int)) ;
ATStmpdec(tmp8, atstkind_t0ype(atstype_bool)) ;
ATStmpdec(tmp11, atstkind_t0ype(atstype_int)) ;
ATStmpdec(tmp12, atstkind_t0ype(atstype_bool)) ;
ATStmpdec(tmp17, atstkind_t0ype(atstype_int)) ;
ATStmpdec(tmp18, atstkind_t0ype(atstype_int)) ;
ATStmpdec(tmp19, atstkind_t0ype(atstype_int)) ;
ATStmpdec(tmp20, atstkind_t0ype(atstype_int)) ;
ATStmpdec(tmp21, atstkind_t0ype(atstype_int)) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 235(line=17, offs=11) -- 541(line=28, offs=4)
*/
ATSINSflab(__patsflab_loop_1):
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 307(line=19, offs=16) -- 315(line=19, offs=24)
*/
ATSINSmove(tmp7, atspre_g0int_add_int(arg0, ATSPMVi0nt(1))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 299(line=19, offs=8) -- 315(line=19, offs=24)
*/
ATSINSmove(tmp2, ATSLIB_056_prelude__eq_g0int_int__2__1(arg2, tmp7)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 296(line=19, offs=5) -- 537(line=27, offs=6)
*/
ATSif(
tmp2
) ATSthen() {
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 349(line=21, offs=10) -- 366(line=21, offs=27)
*/
ATSINSmove(tmp11, atspre_g0int_mod_int(arg1, arg0)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 349(line=21, offs=10) -- 370(line=21, offs=31)
*/
ATSINSmove(tmp8, ATSLIB_056_prelude__eq_g0int_int__2__2(tmp11, ATSPMVi0nt(0))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 346(line=21, offs=7) -- 391(line=21, offs=52)
*/
ATSif(
tmp8
) ATSthen() {
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 376(line=21, offs=37) -- 380(line=21, offs=41)
*/
ATSINSmove(tmpret1, ATSPMVbool_true()) ;
} ATSelse() {
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 386(line=21, offs=47) -- 391(line=21, offs=52)
*/
ATSINSmove(tmpret1, ATSPMVbool_false()) ;
} /* ATSendif */
} ATSelse() {
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 435(line=25, offs=10) -- 452(line=25, offs=27)
*/
ATSINSmove(tmp17, atspre_g0int_mod_int(arg1, arg0)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 435(line=25, offs=10) -- 457(line=25, offs=32)
*/
ATSINSmove(tmp12, ATSLIB_056_prelude__neq_g0int_int__9__1(tmp17, ATSPMVi0nt(1))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 432(line=25, offs=7) -- 531(line=26, offs=63)
*/
ATSif(
tmp12
) ATSthen() {
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 463(line=25, offs=38) -- 468(line=25, offs=43)
*/
ATSINSmove(tmpret1, ATSPMVbool_false()) ;
} ATSelse() {
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 494(line=26, offs=26) -- 509(line=26, offs=41)
*/
ATSINSmove(tmp19, atspre_g0int_div_int(arg1, arg0)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 512(line=26, offs=44) -- 520(line=26, offs=52)
*/
ATSINSmove(tmp20, atspre_g0int_sub_int(arg0, ATSPMVi0nt(1))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 493(line=26, offs=25) -- 521(line=26, offs=53)
*/
ATSINSmove(tmp18, atspre_g0int_mul_int(tmp19, tmp20)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 523(line=26, offs=55) -- 530(line=26, offs=62)
*/
ATSINSmove(tmp21, atspre_g0int_add_int(arg2, ATSPMVi0nt(1))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 480(line=26, offs=12) -- 531(line=26, offs=63)
*/
ATStailcal_beg()
ATSINSmove_tlcal(apy0, arg0) ;
ATSINSmove_tlcal(apy1, tmp18) ;
ATSINSmove_tlcal(apy2, tmp21) ;
ATSINSargmove_tlcal(arg0, apy0) ;
ATSINSargmove_tlcal(arg1, apy1) ;
ATSINSargmove_tlcal(arg2, apy2) ;
ATSINSfgoto(__patsflab_loop_1) ;
ATStailcal_end()

} /* ATSendif */
} /* ATSendif */
ATSfunbody_end()
ATSreturn(tmpret1) ;
} /* end of [loop_1] */

#if(0)
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats: 11831(line=601, offs=3) -- 11870(line=601, offs=42)
*/
/*
local: 
global: eq_g0int_int$2$0(level=0)
local: 
global: 
*/
ATSextern()
/*
imparg = tk(4622)
tmparg = S2Evar(tk(4622))
tmpsub = None()
*/
atstkind_t0ype(atstype_bool)
ATSLIB_056_prelude__eq_g0int_int__2(atstkind_t0ype(atstyvar_type(tk)) arg0, atstkind_t0ype(atstype_int) arg1)
{
/* tmpvardeclst(beg) */
ATStmpdec(tmpret3, atstkind_t0ype(atstype_bool)) ;
ATStmpdec(tmp4, atstkind_t0ype(atstyvar_type(tk))) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11816(line=600, offs=1) -- 11870(line=601, offs=42)
*/
ATSINSflab(__patsflab_eq_g0int_int):
/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11857(line=601, offs=29) -- 11868(line=601, offs=40)
*/
ATSINSmove(tmp4, PMVtmpltcst(g0int2int<S2Eextkind(atstype_int), S2Evar(tk(4622))>)(arg1)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11840(line=601, offs=12) -- 11870(line=601, offs=42)
*/
ATSINSmove(tmpret3, PMVtmpltcst(g0int_eq<S2Evar(tk(4622))>)(arg0, tmp4)) ;

ATSfunbody_end()
ATSreturn(tmpret3) ;
} /* end of [ATSLIB_056_prelude__eq_g0int_int__2] */
#endif // end of [TEMPLATE]

/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats: 11831(line=601, offs=3) -- 11870(line=601, offs=42)
*/
/*
local: 
global: eq_g0int_int$2$1(level=2)
local: 
global: 
*/
ATSstatic()
/*
imparg = tk(4622)
tmparg = S2Evar(tk(4622))
tmpsub = Some(tk(4622) -> S2Eextkind(atstype_int))
*/
atstkind_t0ype(atstype_bool)
ATSLIB_056_prelude__eq_g0int_int__2__1(atstkind_t0ype(atstype_int) arg0, atstkind_t0ype(atstype_int) arg1)
{
/* tmpvardeclst(beg) */
ATStmpdec(tmpret3__1, atstkind_t0ype(atstype_bool)) ;
ATStmpdec(tmp4__1, atstkind_t0ype(atstype_int)) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11816(line=600, offs=1) -- 11870(line=601, offs=42)
*/
ATSINSflab(__patsflab_eq_g0int_int):
/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11857(line=601, offs=29) -- 11868(line=601, offs=40)
*/
ATSINSmove(tmp4__1, atspre_g0int2int_int_int(arg1)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11840(line=601, offs=12) -- 11870(line=601, offs=42)
*/
ATSINSmove(tmpret3__1, atspre_g0int_eq_int(arg0, tmp4__1)) ;

ATSfunbody_end()
ATSreturn(tmpret3__1) ;
} /* end of [ATSLIB_056_prelude__eq_g0int_int__2__1] */

/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats: 11831(line=601, offs=3) -- 11870(line=601, offs=42)
*/
/*
local: 
global: eq_g0int_int$2$2(level=2)
local: 
global: 
*/
ATSstatic()
/*
imparg = tk(4622)
tmparg = S2Evar(tk(4622))
tmpsub = Some(tk(4622) -> S2Eextkind(atstype_int))
*/
atstkind_t0ype(atstype_bool)
ATSLIB_056_prelude__eq_g0int_int__2__2(atstkind_t0ype(atstype_int) arg0, atstkind_t0ype(atstype_int) arg1)
{
/* tmpvardeclst(beg) */
ATStmpdec(tmpret3__2, atstkind_t0ype(atstype_bool)) ;
ATStmpdec(tmp4__2, atstkind_t0ype(atstype_int)) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11816(line=600, offs=1) -- 11870(line=601, offs=42)
*/
ATSINSflab(__patsflab_eq_g0int_int):
/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11857(line=601, offs=29) -- 11868(line=601, offs=40)
*/
ATSINSmove(tmp4__2, atspre_g0int2int_int_int(arg1)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11840(line=601, offs=12) -- 11870(line=601, offs=42)
*/
ATSINSmove(tmpret3__2, atspre_g0int_eq_int(arg0, tmp4__2)) ;

ATSfunbody_end()
ATSreturn(tmpret3__2) ;
} /* end of [ATSLIB_056_prelude__eq_g0int_int__2__2] */

#if(0)
/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats: 11909(line=605, offs=3) -- 11949(line=605, offs=43)
*/
/*
local: 
global: neq_g0int_int$9$0(level=0)
local: 
global: 
*/
ATSextern()
/*
imparg = tk(4623)
tmparg = S2Evar(tk(4623))
tmpsub = None()
*/
atstkind_t0ype(atstype_bool)
ATSLIB_056_prelude__neq_g0int_int__9(atstkind_t0ype(atstyvar_type(tk)) arg0, atstkind_t0ype(atstype_int) arg1)
{
/* tmpvardeclst(beg) */
ATStmpdec(tmpret13, atstkind_t0ype(atstype_bool)) ;
ATStmpdec(tmp14, atstkind_t0ype(atstyvar_type(tk))) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11893(line=604, offs=1) -- 11949(line=605, offs=43)
*/
ATSINSflab(__patsflab_neq_g0int_int):
/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11936(line=605, offs=30) -- 11947(line=605, offs=41)
*/
ATSINSmove(tmp14, PMVtmpltcst(g0int2int<S2Eextkind(atstype_int), S2Evar(tk(4623))>)(arg1)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11918(line=605, offs=12) -- 11949(line=605, offs=43)
*/
ATSINSmove(tmpret13, PMVtmpltcst(g0int_neq<S2Evar(tk(4623))>)(arg0, tmp14)) ;

ATSfunbody_end()
ATSreturn(tmpret13) ;
} /* end of [ATSLIB_056_prelude__neq_g0int_int__9] */
#endif // end of [TEMPLATE]

/*
/home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats: 11909(line=605, offs=3) -- 11949(line=605, offs=43)
*/
/*
local: 
global: neq_g0int_int$9$1(level=2)
local: 
global: 
*/
ATSstatic()
/*
imparg = tk(4623)
tmparg = S2Evar(tk(4623))
tmpsub = Some(tk(4623) -> S2Eextkind(atstype_int))
*/
atstkind_t0ype(atstype_bool)
ATSLIB_056_prelude__neq_g0int_int__9__1(atstkind_t0ype(atstype_int) arg0, atstkind_t0ype(atstype_int) arg1)
{
/* tmpvardeclst(beg) */
ATStmpdec(tmpret13__1, atstkind_t0ype(atstype_bool)) ;
ATStmpdec(tmp14__1, atstkind_t0ype(atstype_int)) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11893(line=604, offs=1) -- 11949(line=605, offs=43)
*/
ATSINSflab(__patsflab_neq_g0int_int):
/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11936(line=605, offs=30) -- 11947(line=605, offs=41)
*/
ATSINSmove(tmp14__1, atspre_g0int2int_int_int(arg1)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/ATS2/prelude/DATS/integer.dats({$PATSPRE}/DATS/integer.dats): 11918(line=605, offs=12) -- 11949(line=605, offs=43)
*/
ATSINSmove(tmpret13__1, atspre_g0int_neq_int(arg0, tmp14__1)) ;

ATSfunbody_end()
ATSreturn(tmpret13__1) ;
} /* end of [ATSLIB_056_prelude__neq_g0int_int__9__1] */

/*
/home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 623(line=36, offs=17) -- 892(line=51, offs=2)
*/
/*
local: 
global: mainats_void_0$15$0(level=0)
local: 
global: 
*/
ATSextern()
atsvoid_t0ype
mainats_void_0()
{
/* tmpvardeclst(beg) */
// ATStmpdec_void(tmpret22) ;
// ATStmpdec_void(tmp30) ;
// ATStmpdec_void(tmp31) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 617(line=36, offs=11) -- 892(line=51, offs=2)
*/
ATSINSflab(__patsflab_main_void_0):
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 633(line=38, offs=3) -- 890(line=50, offs=6)
*/
/*
letpush(beg)
*/
/*
letpush(end)
*/

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 837(line=46, offs=5) -- 847(line=46, offs=15)
*/
ATSINSmove_void(tmp30, loop_16(ATSPMVi0nt(5), ATSPMVi0nt(1))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 853(line=47, offs=5) -- 863(line=47, offs=15)
*/
ATSINSmove_void(tmp31, loop_16(ATSPMVi0nt(6), ATSPMVi0nt(1))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 869(line=48, offs=5) -- 879(line=48, offs=15)
*/
ATSINSmove_void(tmpret22, loop_16(ATSPMVi0nt(7), ATSPMVi0nt(1))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 633(line=38, offs=3) -- 890(line=50, offs=6)
*/
/*
INSletpop()
*/
ATSfunbody_end()
ATSreturn_void(tmpret22) ;
} /* end of [mainats_void_0] */

/*
/home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 641(line=38, offs=11) -- 823(line=43, offs=4)
*/
/*
local: loop_16$0(level=1)
global: loop_16$0(level=1)
local: 
global: 
*/
ATSstatic()
atsvoid_t0ype
loop_16(atstkind_t0ype(atstype_int) arg0, atstkind_t0ype(atstype_int) arg1)
{
/* tmpvardeclst(beg) */
ATStmpdec(apy0, atstkind_t0ype(atstype_int)) ;
ATStmpdec(apy1, atstkind_t0ype(atstype_int)) ;
// ATStmpdec_void(tmpret23) ;
ATStmpdec(tmp24, atstkind_t0ype(atstype_bool)) ;
// ATStmpdec_void(tmp25) ;
// ATStmpdec_void(tmp26) ;
// ATStmpdec_void(tmp27) ;
// ATStmpdec_void(tmp28) ;
ATStmpdec(tmp29, atstkind_t0ype(atstype_int)) ;
/* tmpvardeclst(end) */
ATSfunbody_beg()
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 641(line=38, offs=11) -- 823(line=43, offs=4)
*/
ATSINSflab(__patsflab_loop_16):
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 693(line=40, offs=8) -- 716(line=40, offs=31)
*/
ATSINSmove(tmp24, _057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__valid(arg0, arg1)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 690(line=40, offs=5) -- 819(line=42, offs=34)
*/
ATSif(
tmp24
) ATSthen() {
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 729(line=41, offs=12) -- 785(line=41, offs=68)
*/
ATSINSmove_void(tmp25, atspre_print_int(arg0)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 729(line=41, offs=12) -- 785(line=41, offs=68)
*/
ATSINSmove_void(tmp26, atspre_print_string(ATSPMVstring(" sailors and "))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 729(line=41, offs=12) -- 785(line=41, offs=68)
*/
ATSINSmove_void(tmp27, atspre_print_int(arg1)) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 729(line=41, offs=12) -- 785(line=41, offs=68)
*/
ATSINSmove_void(tmp28, atspre_print_string(ATSPMVstring(" coconuts"))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 729(line=41, offs=12) -- 785(line=41, offs=68)
*/
ATSINSmove_void(tmpret23, atspre_print_newline()) ;

} ATSelse() {
/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 808(line=42, offs=23) -- 818(line=42, offs=33)
*/
ATSINSmove(tmp29, atspre_g0int_add_int(arg1, ATSPMVi0nt(1))) ;

/*
emit_instr: loc0 = /home/ubuntu/workspace/RosettaATS/sailors_coconuts/coconuts.dats: 795(line=42, offs=10) -- 819(line=42, offs=34)
*/
ATStailcal_beg()
ATSINSmove_tlcal(apy0, arg0) ;
ATSINSmove_tlcal(apy1, tmp29) ;
ATSINSargmove_tlcal(arg0, apy0) ;
ATSINSargmove_tlcal(arg1, apy1) ;
ATSINSfgoto(__patsflab_loop_16) ;
ATStailcal_end()

} /* ATSendif */
ATSfunbody_end()
ATSreturn_void(tmpret23) ;
} /* end of [loop_16] */

/*
** for initialization(dynloading)
*/
ATSdynloadflag_minit(_057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__dynloadflag) ;
ATSextern()
atsvoid_t0ype
_057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__dynload()
{
ATSfunbody_beg()
ATSdynload(/*void*/)
ATSdynloadflag_sta(
_057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__dynloadflag
) ;
ATSif(
ATSCKiseqz(
_057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__dynloadflag
)
) ATSthen() {
ATSdynloadset(_057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__dynloadflag) ;
/*
dynexnlst-initize(beg)
*/
/*
dynexnlst-initize(end)
*/
} /* ATSendif */
ATSfunbody_end()
ATSreturn_void(tmpret_void) ;
} /* end of [*_dynload] */

/*
** the ATS runtime
*/
#ifndef _ATS_CCOMP_RUNTIME_NONE_
#include "pats_ccomp_runtime.c"
#include "pats_ccomp_runtime_memalloc.c"
#ifndef _ATS_CCOMP_EXCEPTION_NONE_
#include "pats_ccomp_runtime2_dats.c"
#ifndef _ATS_CCOMP_RUNTIME_TRYWITH_NONE_
#include "pats_ccomp_runtime_trywith.c"
#endif /* _ATS_CCOMP_RUNTIME_TRYWITH_NONE_ */
#endif // end of [_ATS_CCOMP_EXCEPTION_NONE_]
#endif /* _ATS_CCOMP_RUNTIME_NONE_ */

/*
** the [main] implementation
*/
int
main
(
int argc, char **argv, char **envp
) {
int err = 0 ;
_057_home_057_ubuntu_057_workspace_057_RosettaATS_057_sailors_coconuts_057_coconuts_056_dats__dynload() ;
ATSmainats_void_0(err) ;
return (err) ;
} /* end of [main] */

/* ****** ****** */

/* end-of-compilation-unit */
