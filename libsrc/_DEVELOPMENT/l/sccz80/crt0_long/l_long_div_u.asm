;
;       Small C+ Long Library Functions
;
;       Divide 2 32 bit numbers
;
;       Hopefully this routine does work!
;
;       I think the use of ix is unavoidable in this case..unless you know
;       otherwise!
;
;       This is for unsigned quantities..separate routine for signed..
;
;       Replaced use of ix with bcbc'

SECTION code_clib
SECTION code_l_sccz80

PUBLIC l_long_div_u
PUBLIC l_long_mod_u

EXTERN l_divu_32_32x32

l_long_mod_u:
   and a
   jr  common
l_long_div_u:
   scf
common:

   ; dehl  = divisor
   ; stack = dividend, ret
   
   exx
   pop bc
   
   pop hl
   pop de
   
   push bc
   jp c,l_divu_32_32x32 - 1
   call l_divu_32_32x32 - 1
   exx
   ret
