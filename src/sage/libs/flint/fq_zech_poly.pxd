# distutils: libraries = flint
# distutils: depends = flint/fq_zech_poly.h

################################################################################
# This file is auto-generated by the script
#   SAGE_ROOT/src/sage_setup/autogen/flint_autogen.py.
# Do not modify by hand! Fix and rerun the script instead.
################################################################################

from libc.stdio cimport FILE
from sage.libs.gmp.types cimport *
from sage.libs.mpfr.types cimport *
from sage.libs.flint.types cimport *

cdef extern from "flint_wrap.h":
    void fq_zech_poly_init(fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_init2(fq_zech_poly_t poly, slong alloc, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_realloc(fq_zech_poly_t poly, slong alloc, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_fit_length(fq_zech_poly_t poly, slong len, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_set_length(fq_zech_poly_t poly, slong newlen, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_clear(fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_normalise(fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_normalise2(const fq_zech_struct * poly, slong * length, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_truncate(fq_zech_poly_t poly, slong newlen, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_set_trunc(fq_zech_poly_t poly1, fq_zech_poly_t poly2, slong newlen, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_reverse(fq_zech_struct * output, const fq_zech_struct * input, slong len, slong m, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_reverse(fq_zech_poly_t output, const fq_zech_poly_t input, slong m, const fq_zech_ctx_t ctx) noexcept
    slong fq_zech_poly_degree(const fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    slong fq_zech_poly_length(const fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    fq_zech_struct * fq_zech_poly_lead(const fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_randtest(fq_zech_poly_t f, flint_rand_t state, slong len, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_randtest_not_zero(fq_zech_poly_t f, flint_rand_t state, slong len, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_randtest_monic(fq_zech_poly_t f, flint_rand_t state, slong len, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_randtest_irreducible(fq_zech_poly_t f, flint_rand_t state, slong len, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_set(fq_zech_struct * rop, const fq_zech_struct * op, slong len, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_set(fq_zech_poly_t poly1, const fq_zech_poly_t poly2, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_set_fq_zech(fq_zech_poly_t poly, const fq_zech_t c, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_set_fmpz_mod_poly(fq_zech_poly_t rop, const fmpz_mod_poly_t op, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_set_nmod_poly(fq_zech_poly_t rop, const nmod_poly_t op, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_swap(fq_zech_poly_t op1, fq_zech_poly_t op2, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_zero(fq_zech_struct * rop, slong len, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_zero(fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_one(fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_gen(fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_make_monic(fq_zech_poly_t rop, const fq_zech_poly_t op, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_make_monic(fq_zech_struct * rop, const fq_zech_struct * op, slong length, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_get_coeff(fq_zech_t x, const fq_zech_poly_t poly, slong n, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_set_coeff(fq_zech_poly_t poly, slong n, const fq_zech_t x, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_set_coeff_fmpz(fq_zech_poly_t poly, slong n, const fmpz_t x, const fq_zech_ctx_t ctx) noexcept
    bint fq_zech_poly_equal(const fq_zech_poly_t poly1, const fq_zech_poly_t poly2, const fq_zech_ctx_t ctx) noexcept
    bint fq_zech_poly_equal_trunc(const fq_zech_poly_t poly1, const fq_zech_poly_t poly2, slong n, const fq_zech_ctx_t ctx) noexcept
    bint fq_zech_poly_is_zero(const fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    bint fq_zech_poly_is_one(const fq_zech_poly_t op, const fq_zech_ctx_t ctx) noexcept
    bint fq_zech_poly_is_gen(const fq_zech_poly_t op, const fq_zech_ctx_t ctx) noexcept
    bint fq_zech_poly_is_unit(const fq_zech_poly_t op, const fq_zech_ctx_t ctx) noexcept
    bint fq_zech_poly_equal_fq_zech(const fq_zech_poly_t poly, const fq_zech_t c, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_add(fq_zech_struct * res, const fq_zech_struct * poly1, slong len1, const fq_zech_struct * poly2, slong len2, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_add(fq_zech_poly_t res, const fq_zech_poly_t poly1, const fq_zech_poly_t poly2, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_add_si(fq_zech_poly_t res, const fq_zech_poly_t poly1, slong c, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_add_series(fq_zech_poly_t res, const fq_zech_poly_t poly1, const fq_zech_poly_t poly2, slong n, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_sub(fq_zech_struct * res, const fq_zech_struct * poly1, slong len1, const fq_zech_struct * poly2, slong len2, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_sub(fq_zech_poly_t res, const fq_zech_poly_t poly1, const fq_zech_poly_t poly2, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_sub_series(fq_zech_poly_t res, const fq_zech_poly_t poly1, const fq_zech_poly_t poly2, slong n, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_neg(fq_zech_struct * rop, const fq_zech_struct * op, slong len, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_neg(fq_zech_poly_t res, const fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_scalar_mul_fq_zech(fq_zech_struct * rop, const fq_zech_struct * op, slong len, const fq_zech_t x, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_scalar_mul_fq_zech(fq_zech_poly_t rop, const fq_zech_poly_t op, const fq_zech_t x, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_scalar_addmul_fq_zech(fq_zech_struct * rop, const fq_zech_struct * op, slong len, const fq_zech_t x, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_scalar_addmul_fq_zech(fq_zech_poly_t rop, const fq_zech_poly_t op, const fq_zech_t x, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_scalar_submul_fq_zech(fq_zech_struct * rop, const fq_zech_struct * op, slong len, const fq_zech_t x, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_scalar_submul_fq_zech(fq_zech_poly_t rop, const fq_zech_poly_t op, const fq_zech_t x, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_scalar_div_fq_zech(fq_zech_struct * rop, const fq_zech_struct * op, slong len, const fq_zech_t x, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_scalar_div_fq_zech(fq_zech_poly_t rop, const fq_zech_poly_t op, const fq_zech_t x, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mul_classical(fq_zech_struct * rop, const fq_zech_struct * op1, slong len1, const fq_zech_struct * op2, slong len2, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mul_classical(fq_zech_poly_t rop, const fq_zech_poly_t op1, const fq_zech_poly_t op2, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mul_reorder(fq_zech_struct * rop, const fq_zech_struct * op1, slong len1, const fq_zech_struct * op2, slong len2, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mul_reorder(fq_zech_poly_t rop, const fq_zech_poly_t op1, const fq_zech_poly_t op2, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mul_KS(fq_zech_struct * rop, const fq_zech_struct * op1, slong len1, const fq_zech_struct * op2, slong len2, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mul_KS(fq_zech_poly_t rop, const fq_zech_poly_t op1, const fq_zech_poly_t op2, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mul(fq_zech_struct * rop, const fq_zech_struct * op1, slong len1, const fq_zech_struct * op2, slong len2, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mul(fq_zech_poly_t rop, const fq_zech_poly_t op1, const fq_zech_poly_t op2, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mullow_classical(fq_zech_struct * rop, const fq_zech_struct * op1, slong len1, const fq_zech_struct * op2, slong len2, slong n, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mullow_classical(fq_zech_poly_t rop, const fq_zech_poly_t op1, const fq_zech_poly_t op2, slong n, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mullow_KS(fq_zech_struct * rop, const fq_zech_struct * op1, slong len1, const fq_zech_struct * op2, slong len2, slong n, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mullow_KS(fq_zech_poly_t rop, const fq_zech_poly_t op1, const fq_zech_poly_t op2, slong n, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mullow(fq_zech_struct * rop, const fq_zech_struct * op1, slong len1, const fq_zech_struct * op2, slong len2, slong n, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mullow(fq_zech_poly_t rop, const fq_zech_poly_t op1, const fq_zech_poly_t op2, slong n, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mulhigh_classical(fq_zech_struct * res, const fq_zech_struct * poly1, slong len1, const fq_zech_struct * poly2, slong len2, slong start, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mulhigh_classical(fq_zech_poly_t res, const fq_zech_poly_t poly1, const fq_zech_poly_t poly2, slong start, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mulhigh(fq_zech_struct * res, const fq_zech_struct * poly1, slong len1, const fq_zech_struct * poly2, slong len2, slong start, fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mulhigh(fq_zech_poly_t res, const fq_zech_poly_t poly1, const fq_zech_poly_t poly2, slong start, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mulmod(fq_zech_struct * res, const fq_zech_struct * poly1, slong len1, const fq_zech_struct * poly2, slong len2, const fq_zech_struct * f, slong lenf, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mulmod(fq_zech_poly_t res, const fq_zech_poly_t poly1, const fq_zech_poly_t poly2, const fq_zech_poly_t f, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_mulmod_preinv(fq_zech_struct * res, const fq_zech_struct * poly1, slong len1, const fq_zech_struct * poly2, slong len2, const fq_zech_struct * f, slong lenf, const fq_zech_struct * finv, slong lenfinv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_mulmod_preinv(fq_zech_poly_t res, const fq_zech_poly_t poly1, const fq_zech_poly_t poly2, const fq_zech_poly_t f, const fq_zech_poly_t finv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_sqr_classical(fq_zech_struct * rop, const fq_zech_struct * op, slong len, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_sqr_classical(fq_zech_poly_t rop, const fq_zech_poly_t op, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_sqr_KS(fq_zech_struct * rop, const fq_zech_struct * op, slong len, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_sqr_KS(fq_zech_poly_t rop, const fq_zech_poly_t op, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_sqr(fq_zech_struct * rop, const fq_zech_struct * op, slong len, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_sqr(fq_zech_poly_t rop, const fq_zech_poly_t op, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_pow(fq_zech_struct * rop, const fq_zech_struct * op, slong len, ulong e, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_pow(fq_zech_poly_t rop, const fq_zech_poly_t op, ulong e, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_powmod_ui_binexp(fq_zech_struct * res, const fq_zech_struct * poly, ulong e, const fq_zech_struct * f, slong lenf, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_powmod_ui_binexp(fq_zech_poly_t res, const fq_zech_poly_t poly, ulong e, const fq_zech_poly_t f, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_powmod_ui_binexp_preinv(fq_zech_struct * res, const fq_zech_struct * poly, ulong e, const fq_zech_struct * f, slong lenf, const fq_zech_struct * finv, slong lenfinv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_powmod_ui_binexp_preinv(fq_zech_poly_t res, const fq_zech_poly_t poly, ulong e, const fq_zech_poly_t f, const fq_zech_poly_t finv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_powmod_fmpz_binexp(fq_zech_struct * res, const fq_zech_struct * poly, const fmpz_t e, const fq_zech_struct * f, slong lenf, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_powmod_fmpz_binexp(fq_zech_poly_t res, const fq_zech_poly_t poly, const fmpz_t e, const fq_zech_poly_t f, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_powmod_fmpz_binexp_preinv(fq_zech_struct * res, const fq_zech_struct * poly, const fmpz_t e, const fq_zech_struct * f, slong lenf, const fq_zech_struct * finv, slong lenfinv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_powmod_fmpz_binexp_preinv(fq_zech_poly_t res, const fq_zech_poly_t poly, const fmpz_t e, const fq_zech_poly_t f, const fq_zech_poly_t finv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_powmod_fmpz_sliding_preinv(fq_zech_struct * res, const fq_zech_struct * poly, const fmpz_t e, ulong k, const fq_zech_struct * f, slong lenf, const fq_zech_struct * finv, slong lenfinv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_powmod_fmpz_sliding_preinv(fq_zech_poly_t res, const fq_zech_poly_t poly, const fmpz_t e, ulong k, const fq_zech_poly_t f, const fq_zech_poly_t finv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_powmod_x_fmpz_preinv(fq_zech_struct * res, const fmpz_t e, const fq_zech_struct * f, slong lenf, const fq_zech_struct * finv, slong lenfinv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_powmod_x_fmpz_preinv(fq_zech_poly_t res, const fmpz_t e, const fq_zech_poly_t f, const fq_zech_poly_t finv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_pow_trunc_binexp(fq_zech_struct * res, const fq_zech_struct * poly, ulong e, slong trunc, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_pow_trunc_binexp(fq_zech_poly_t res, const fq_zech_poly_t poly, ulong e, slong trunc, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_pow_trunc(fq_zech_struct * res, const fq_zech_struct * poly, ulong e, slong trunc, const fq_zech_ctx_t mod) noexcept
    void fq_zech_poly_pow_trunc(fq_zech_poly_t res, const fq_zech_poly_t poly, ulong e, slong trunc, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_shift_left(fq_zech_struct * rop, const fq_zech_struct * op, slong len, slong n, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_shift_left(fq_zech_poly_t rop, const fq_zech_poly_t op, slong n, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_shift_right(fq_zech_struct * rop, const fq_zech_struct * op, slong len, slong n, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_shift_right(fq_zech_poly_t rop, const fq_zech_poly_t op, slong n, const fq_zech_ctx_t ctx) noexcept
    slong _fq_zech_poly_hamming_weight(const fq_zech_struct * op, slong len, const fq_zech_ctx_t ctx) noexcept
    slong fq_zech_poly_hamming_weight(const fq_zech_poly_t op, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_divrem(fq_zech_struct * Q, fq_zech_struct * R, const fq_zech_struct * A, slong lenA, const fq_zech_struct * B, slong lenB, const fq_zech_t invB, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_divrem(fq_zech_poly_t Q, fq_zech_poly_t R, const fq_zech_poly_t A, const fq_zech_poly_t B, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_divrem_f(fq_zech_t f, fq_zech_poly_t Q, fq_zech_poly_t R, const fq_zech_poly_t A, const fq_zech_poly_t B, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_rem(fq_zech_struct * R, const fq_zech_struct * A, slong lenA, const fq_zech_struct * B, slong lenB, const fq_zech_t invB, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_rem(fq_zech_poly_t R, const fq_zech_poly_t A, const fq_zech_poly_t B, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_div(fq_zech_struct * Q, const fq_zech_struct * A, slong lenA, const fq_zech_struct * B, slong lenB, const fq_zech_t invB, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_div(fq_zech_poly_t Q, const fq_zech_poly_t A, const fq_zech_poly_t B, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_div_newton_n_preinv(fq_zech_struct * Q, const fq_zech_struct * A, slong lenA, const fq_zech_struct * B, slong lenB, const fq_zech_struct * Binv, slong lenBinv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_div_newton_n_preinv(fq_zech_poly_t Q, const fq_zech_poly_t A, const fq_zech_poly_t B, const fq_zech_poly_t Binv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_divrem_newton_n_preinv(fq_zech_struct * Q, fq_zech_struct * R, const fq_zech_struct * A, slong lenA, const fq_zech_struct * B, slong lenB, const fq_zech_struct * Binv, slong lenBinv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_divrem_newton_n_preinv(fq_zech_poly_t Q, fq_zech_poly_t R, const fq_zech_poly_t A, const fq_zech_poly_t B, const fq_zech_poly_t Binv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_inv_series_newton(fq_zech_struct * Qinv, const fq_zech_struct * Q, slong n, const fq_zech_t cinv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_inv_series_newton(fq_zech_poly_t Qinv, const fq_zech_poly_t Q, slong n, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_inv_series(fq_zech_struct * Qinv, const fq_zech_struct * Q, slong n, const fq_zech_t cinv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_inv_series(fq_zech_poly_t Qinv, const fq_zech_poly_t Q, slong n, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_div_series(fq_zech_struct * Q, const fq_zech_struct * A, slong Alen, const fq_zech_struct * B, slong Blen, slong n, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_div_series(fq_zech_poly_t Q, const fq_zech_poly_t A, const fq_zech_poly_t B, slong n, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_gcd(fq_zech_poly_t rop, const fq_zech_poly_t op1, const fq_zech_poly_t op2, const fq_zech_ctx_t ctx) noexcept
    slong _fq_zech_poly_gcd(fq_zech_struct * G, const fq_zech_struct * A, slong lenA, const fq_zech_struct * B, slong lenB, const fq_zech_ctx_t ctx) noexcept
    slong _fq_zech_poly_gcd_euclidean_f(fq_zech_t f, fq_zech_struct * G, const fq_zech_struct * A, slong lenA, const fq_zech_struct * B, slong lenB, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_gcd_euclidean_f(fq_zech_t f, fq_zech_poly_t G, const fq_zech_poly_t A, const fq_zech_poly_t B, const fq_zech_ctx_t ctx) noexcept
    slong _fq_zech_poly_xgcd(fq_zech_struct * G, fq_zech_struct * S, fq_zech_struct * T, const fq_zech_struct * A, slong lenA, const fq_zech_struct * B, slong lenB, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_xgcd(fq_zech_poly_t G, fq_zech_poly_t S, fq_zech_poly_t T, const fq_zech_poly_t A, const fq_zech_poly_t B, const fq_zech_ctx_t ctx) noexcept
    slong _fq_zech_poly_xgcd_euclidean_f(fq_zech_t f, fq_zech_struct * G, fq_zech_struct * S, fq_zech_struct * T, const fq_zech_struct * A, slong lenA, const fq_zech_struct * B, slong lenB, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_xgcd_euclidean_f(fq_zech_t f, fq_zech_poly_t G, fq_zech_poly_t S, fq_zech_poly_t T, const fq_zech_poly_t A, const fq_zech_poly_t B, const fq_zech_ctx_t ctx) noexcept
    int _fq_zech_poly_divides(fq_zech_struct * Q, const fq_zech_struct * A, slong lenA, const fq_zech_struct * B, slong lenB, const fq_zech_t invB, const fq_zech_ctx_t ctx) noexcept
    int fq_zech_poly_divides(fq_zech_poly_t Q, const fq_zech_poly_t A, const fq_zech_poly_t B, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_derivative(fq_zech_struct * rop, const fq_zech_struct * op, slong len, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_derivative(fq_zech_poly_t rop, const fq_zech_poly_t op, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_invsqrt_series(fq_zech_struct * g, const fq_zech_struct * h, slong n, fq_zech_ctx_t mod) noexcept
    void fq_zech_poly_invsqrt_series(fq_zech_poly_t g, const fq_zech_poly_t h, slong n, fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_sqrt_series(fq_zech_struct * g, const fq_zech_struct * h, slong n, fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_sqrt_series(fq_zech_poly_t g, const fq_zech_poly_t h, slong n, fq_zech_ctx_t ctx) noexcept
    int _fq_zech_poly_sqrt(fq_zech_struct * s, const fq_zech_struct * p, slong n, fq_zech_ctx_t mod) noexcept
    int fq_zech_poly_sqrt(fq_zech_poly_t s, const fq_zech_poly_t p, fq_zech_ctx_t mod) noexcept
    void _fq_zech_poly_evaluate_fq_zech(fq_zech_t rop, const fq_zech_struct * op, slong len, const fq_zech_t a, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_evaluate_fq_zech(fq_zech_t rop, const fq_zech_poly_t f, const fq_zech_t a, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_compose(fq_zech_struct * rop, const fq_zech_struct * op1, slong len1, const fq_zech_struct * op2, slong len2, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_compose(fq_zech_poly_t rop, const fq_zech_poly_t op1, const fq_zech_poly_t op2, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_compose_mod_horner(fq_zech_struct * res, const fq_zech_struct * f, slong lenf, const fq_zech_struct * g, const fq_zech_struct * h, slong lenh, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_compose_mod_horner(fq_zech_poly_t res, const fq_zech_poly_t f, const fq_zech_poly_t g, const fq_zech_poly_t h, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_compose_mod_horner_preinv(fq_zech_struct * res, const fq_zech_struct * f, slong lenf, const fq_zech_struct * g, const fq_zech_struct * h, slong lenh, const fq_zech_struct * hinv, slong lenhiv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_compose_mod_horner_preinv(fq_zech_poly_t res, const fq_zech_poly_t f, const fq_zech_poly_t g, const fq_zech_poly_t h, const fq_zech_poly_t hinv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_compose_mod_brent_kung(fq_zech_struct * res, const fq_zech_struct * f, slong lenf, const fq_zech_struct * g, const fq_zech_struct * h, slong lenh, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_compose_mod_brent_kung(fq_zech_poly_t res, const fq_zech_poly_t f, const fq_zech_poly_t g, const fq_zech_poly_t h, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_compose_mod_brent_kung_preinv(fq_zech_struct * res, const fq_zech_struct * f, slong lenf, const fq_zech_struct * g, const fq_zech_struct * h, slong lenh, const fq_zech_struct * hinv, slong lenhiv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_compose_mod_brent_kung_preinv(fq_zech_poly_t res, const fq_zech_poly_t f, const fq_zech_poly_t g, const fq_zech_poly_t h, const fq_zech_poly_t hinv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_compose_mod(fq_zech_struct * res, const fq_zech_struct * f, slong lenf, const fq_zech_struct * g, const fq_zech_struct * h, slong lenh, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_compose_mod(fq_zech_poly_t res, const fq_zech_poly_t f, const fq_zech_poly_t g, const fq_zech_poly_t h, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_compose_mod_preinv(fq_zech_struct * res, const fq_zech_struct * f, slong lenf, const fq_zech_struct * g, const fq_zech_struct * h, slong lenh, const fq_zech_struct * hinv, slong lenhiv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_compose_mod_preinv(fq_zech_poly_t res, const fq_zech_poly_t f, const fq_zech_poly_t g, const fq_zech_poly_t h, const fq_zech_poly_t hinv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_reduce_matrix_mod_poly (fq_zech_mat_t A, const fq_zech_mat_t B, const fq_zech_poly_t f, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_precompute_matrix (fq_zech_mat_t A, const fq_zech_struct * f, const fq_zech_struct * g, slong leng, const fq_zech_struct * ginv, slong lenginv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_precompute_matrix (fq_zech_mat_t A, const fq_zech_poly_t f, const fq_zech_poly_t g, const fq_zech_poly_t ginv, const fq_zech_ctx_t ctx) noexcept
    void _fq_zech_poly_compose_mod_brent_kung_precomp_preinv(fq_zech_struct * res, const fq_zech_struct * f, slong lenf, const fq_zech_mat_t A, const fq_zech_struct * h, slong lenh, const fq_zech_struct * hinv, slong lenhinv, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_compose_mod_brent_kung_precomp_preinv(fq_zech_poly_t res, const fq_zech_poly_t f, const fq_zech_mat_t A, const fq_zech_poly_t h, const fq_zech_poly_t hinv, const fq_zech_ctx_t ctx) noexcept
    int _fq_zech_poly_fprint_pretty(FILE * file, const fq_zech_struct * poly, slong len, const char * x, const fq_zech_ctx_t ctx) noexcept
    int fq_zech_poly_fprint_pretty(FILE * file, const fq_zech_poly_t poly, const char * x, const fq_zech_ctx_t ctx) noexcept
    int _fq_zech_poly_print_pretty(const fq_zech_struct * poly, slong len, const char * x, const fq_zech_ctx_t ctx) noexcept
    int fq_zech_poly_print_pretty(const fq_zech_poly_t poly, const char * x, const fq_zech_ctx_t ctx) noexcept
    int _fq_zech_poly_fprint(FILE * file, const fq_zech_struct * poly, slong len, const fq_zech_ctx_t ctx) noexcept
    int fq_zech_poly_fprint(FILE * file, const fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    int _fq_zech_poly_print(const fq_zech_struct * poly, slong len, const fq_zech_ctx_t ctx) noexcept
    int fq_zech_poly_print(const fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    char * _fq_zech_poly_get_str(const fq_zech_struct * poly, slong len, const fq_zech_ctx_t ctx) noexcept
    char * fq_zech_poly_get_str(const fq_zech_poly_t poly, const fq_zech_ctx_t ctx) noexcept
    char * _fq_zech_poly_get_str_pretty(const fq_zech_struct * poly, slong len, const char * x, const fq_zech_ctx_t ctx) noexcept
    char * fq_zech_poly_get_str_pretty(const fq_zech_poly_t poly, const char * x, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_inflate(fq_zech_poly_t result, const fq_zech_poly_t input, ulong inflation, const fq_zech_ctx_t ctx) noexcept
    void fq_zech_poly_deflate(fq_zech_poly_t result, const fq_zech_poly_t input, ulong deflation, const fq_zech_ctx_t ctx) noexcept
    ulong fq_zech_poly_deflation(const fq_zech_poly_t input, const fq_zech_ctx_t ctx) noexcept
