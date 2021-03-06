

SECTION code_fp_math32

PUBLIC cm32_sccz80_fshypot

EXTERN cm32_sccz80_switch_arg, cm32_sccz80_fsreadl
EXTERN m32_fshypot

    ; find the hypotenuse of two sccz80 floats
    ;
    ; enter : stack = sccz80_float left, sccz80_float right, ret
    ;
    ; exit  :  DEHL = sccz80_float(left+right)
    ;
    ; uses  : af, bc, de, hl, af', bc', de', hl'

.cm32_sccz80_fshypot
    call cm32_sccz80_switch_arg
    call cm32_sccz80_fsreadl
    jp m32_fshypot          ; enter stack = sccz80_float right, sccz80_float left, ret
                            ;        DEHL = sccz80_float right
                            ; return DEHL = sccz80_float
