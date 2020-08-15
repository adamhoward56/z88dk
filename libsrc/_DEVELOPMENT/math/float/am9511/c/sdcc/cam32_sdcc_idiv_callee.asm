
; int __ldiv_callee (int left, int right)

SECTION code_clib
SECTION code_fp_am9511

PUBLIC _am9511_ldiv_callee
PUBLIC cam32_sdcc_ldivs_callee, cam32_sdcc_ldivu_callee

EXTERN cam32_sdcc_ireadr_callee, asm_am9511_ldiv_callee

DEFC _am9511_ldiv_callee = cam32_sdcc_ldivs_callee

.cam32_sdcc_ldivs_callee

    ; divide sdcc int by sdcc int
    ;
    ; enter : stack = sdcc_int right, sdcc_int left, ret
    ;
    ; exit  : DEHL = sdcc_int(left/right)
    ;
    ; uses  : af, bc, de, hl, af', bc', de', hl'

    call cam32_sdcc_ireadr_callee
    jp asm_am9511_ldiv_callee   ; enter stack = sdcc_int left, ret
                                ;        DEHL = sdcc_int right


.cam32_sdcc_ldivu_callee

    ; divide sdcc int by sdcc int
    ;
    ; enter : stack = sdcc_int right, sdcc_int left, ret
    ;
    ; exit  : DEHL = sdcc_int(left/right)
    ;
    ; uses  : af, bc, de, hl, af', bc', de', hl'

    call cam32_sdcc_ireadr_callee
    res 7,h                     ; unsigned divisor
    jp asm_am9511_ldiv_callee   ; enter stack = sdcc_int left, ret
                                ;        DEHL = sdcc_int right
                                ; return DEHL = sdcc_int
