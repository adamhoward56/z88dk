
; size_t b_array_insert_n(b_array_t *a, size_t idx, size_t n, int c)

XDEF b_array_insert_n_callee

b_array_insert_n_callee:

   pop hl
   pop de
   ld a,e
   pop de
   pop bc
   ex (sp),hl
   
   INCLUDE "../../z80/asm_b_array_insert_n.asm"
