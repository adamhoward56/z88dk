; int wv_stack_reserve(wv_stack_t *s, size_t n)

SECTION code_clib
SECTION code_string

MODULE _wv_stack_reserve_callee_sdcc
GLOBAL _wv_stack_reserve_callee
GLOBAL wv_stack_reserve_callee

defc _wv_stack_reserve_callee = wv_stack_reserve_callee

