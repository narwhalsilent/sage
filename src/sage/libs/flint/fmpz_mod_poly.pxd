# distutils: libraries = flint
# distutils: depends = flint/fmpz_mod_poly.h

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
    void fmpz_mod_poly_init(fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_init2(fmpz_mod_poly_t poly, slong alloc, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_clear(fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_realloc(fmpz_mod_poly_t poly, slong alloc, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_fit_length(fmpz_mod_poly_t poly, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_normalise(fmpz_mod_poly_t poly) noexcept
    void _fmpz_mod_poly_set_length(fmpz_mod_poly_t poly, slong len) noexcept
    void fmpz_mod_poly_truncate(fmpz_mod_poly_t poly, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_set_trunc(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_randtest(fmpz_mod_poly_t f, flint_rand_t state, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_randtest_irreducible(fmpz_mod_poly_t f, flint_rand_t state, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_randtest_not_zero(fmpz_mod_poly_t f, flint_rand_t state, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_randtest_monic(fmpz_mod_poly_t poly, flint_rand_t state, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_randtest_monic_irreducible(fmpz_mod_poly_t poly, flint_rand_t state, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_randtest_monic_primitive(fmpz_mod_poly_t poly, flint_rand_t state, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_randtest_trinomial(fmpz_mod_poly_t poly, flint_rand_t state, slong len, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_randtest_trinomial_irreducible(fmpz_mod_poly_t poly, flint_rand_t state, slong len, slong max_attempts, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_randtest_pentomial(fmpz_mod_poly_t poly, flint_rand_t state, slong len, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_randtest_pentomial_irreducible(fmpz_mod_poly_t poly, flint_rand_t state, slong len, slong max_attempts, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_randtest_sparse_irreducible(fmpz_mod_poly_t poly, flint_rand_t state, slong len, const fmpz_mod_ctx_t ctx) noexcept
    slong fmpz_mod_poly_degree(const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    slong fmpz_mod_poly_length(const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    fmpz * fmpz_mod_poly_lead(const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_set(fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_swap(fmpz_mod_poly_t poly1, fmpz_mod_poly_t poly2, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_zero(fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_one(fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_zero_coeffs(fmpz_mod_poly_t poly, slong i, slong j, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_reverse(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_set_ui(fmpz_mod_poly_t f, ulong c, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_set_fmpz(fmpz_mod_poly_t f, const fmpz_t c, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_set_fmpz_poly(fmpz_mod_poly_t f, const fmpz_poly_t g, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_get_fmpz_poly(fmpz_poly_t f, const fmpz_mod_poly_t g, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_get_nmod_poly(nmod_poly_t f, const fmpz_mod_poly_t g) noexcept
    void fmpz_mod_poly_set_nmod_poly(fmpz_mod_poly_t f, const nmod_poly_t g) noexcept
    bint fmpz_mod_poly_equal(const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, const fmpz_mod_ctx_t ctx) noexcept
    bint fmpz_mod_poly_equal_trunc(const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, slong n, const fmpz_mod_ctx_t ctx) noexcept
    bint fmpz_mod_poly_is_zero(const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    bint fmpz_mod_poly_is_one(const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    bint fmpz_mod_poly_is_gen(const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_set_coeff_fmpz(fmpz_mod_poly_t poly, slong n, const fmpz_t x, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_set_coeff_ui(fmpz_mod_poly_t poly, slong n, ulong x, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_get_coeff_fmpz(fmpz_t x, const fmpz_mod_poly_t poly, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_set_coeff_mpz(fmpz_mod_poly_t poly, slong n, const mpz_t x, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_get_coeff_mpz(mpz_t x, const fmpz_mod_poly_t poly, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_shift_left(fmpz * res, const fmpz * poly, slong len, slong n) noexcept
    void fmpz_mod_poly_shift_left(fmpz_mod_poly_t f, const fmpz_mod_poly_t g, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_shift_right(fmpz * res, const fmpz * poly, slong len, slong n) noexcept
    void fmpz_mod_poly_shift_right(fmpz_mod_poly_t f, const fmpz_mod_poly_t g, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_add(fmpz * res, const fmpz * poly1, slong len1, const fmpz * poly2, slong len2, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_add(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_add_series(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_sub(fmpz * res, const fmpz * poly1, slong len1, const fmpz * poly2, slong len2, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_sub(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_sub_series(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_neg(fmpz * res, const fmpz * poly, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_neg(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_scalar_mul_fmpz(fmpz * res, const fmpz * poly, slong len, const fmpz_t x, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_scalar_mul_fmpz(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, const fmpz_t x, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_scalar_addmul_fmpz(fmpz_mod_poly_t rop, const fmpz_mod_poly_t op, const fmpz_t x, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_scalar_div_fmpz(fmpz * res, const fmpz * poly, slong len, const fmpz_t x, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_scalar_div_fmpz(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, const fmpz_t x, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_mul(fmpz * res, const fmpz * poly1, slong len1, const fmpz * poly2, slong len2, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_mul(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_mullow(fmpz * res, const fmpz * poly1, slong len1, const fmpz * poly2, slong len2, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_mullow(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_sqr(fmpz * res, const fmpz * poly, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_sqr(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_mulhigh(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, slong start, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_mulmod(fmpz * res, const fmpz * poly1, slong len1, const fmpz * poly2, slong len2, const fmpz * f, slong lenf, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_mulmod(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, const fmpz_mod_poly_t f, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_mulmod_preinv(fmpz * res, const fmpz * poly1, slong len1, const fmpz * poly2, slong len2, const fmpz * f, slong lenf, const fmpz * finv, slong lenfinv, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_mulmod_preinv(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, const fmpz_mod_poly_t f, const fmpz_mod_poly_t finv, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_product_roots_fmpz_vec(fmpz * poly, const fmpz * xs, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_product_roots_fmpz_vec(fmpz_mod_poly_t poly, const fmpz * xs, slong n, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_find_distinct_nonzero_roots(fmpz * roots, const fmpz_mod_poly_t A, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_pow(fmpz * rop, const fmpz * op, slong len, ulong e, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_pow(fmpz_mod_poly_t rop, const fmpz_mod_poly_t op, ulong e, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_pow_trunc(fmpz * res, const fmpz * poly, ulong e, slong trunc, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_pow_trunc(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, ulong e, slong trunc, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_pow_trunc_binexp(fmpz * res, const fmpz * poly, ulong e, slong trunc, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_pow_trunc_binexp(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, ulong e, slong trunc, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_powmod_ui_binexp(fmpz * res, const fmpz * poly, ulong e, const fmpz * f, slong lenf, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_powmod_ui_binexp(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, ulong e, const fmpz_mod_poly_t f, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_powmod_ui_binexp_preinv(fmpz * res, const fmpz * poly, ulong e, const fmpz * f, slong lenf, const fmpz * finv, slong lenfinv, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_powmod_ui_binexp_preinv(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, ulong e, const fmpz_mod_poly_t f, const fmpz_mod_poly_t finv, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_powmod_fmpz_binexp(fmpz * res, const fmpz * poly, const fmpz_t e, const fmpz * f, slong lenf, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_powmod_fmpz_binexp(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, const fmpz_t e, const fmpz_mod_poly_t f, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_powmod_fmpz_binexp_preinv(fmpz * res, const fmpz * poly, const fmpz_t e, const fmpz * f, slong lenf, const fmpz * finv, slong lenfinv, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_powmod_fmpz_binexp_preinv(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, const fmpz_t e, const fmpz_mod_poly_t f, const fmpz_mod_poly_t finv, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_powmod_x_fmpz_preinv(fmpz * res, const fmpz_t e, const fmpz * f, slong lenf, const fmpz * finv, slong lenfinv, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_powmod_x_fmpz_preinv(fmpz_mod_poly_t res, const fmpz_t e, const fmpz_mod_poly_t f, const fmpz_mod_poly_t finv, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_powers_mod_preinv_naive(fmpz ** res, const fmpz * f, slong flen, slong n, const fmpz * g, slong glen, const fmpz * ginv, slong ginvlen, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_powers_mod_naive(fmpz_mod_poly_struct * res, const fmpz_mod_poly_t f, slong n, const fmpz_mod_poly_t g, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_powers_mod_preinv_threaded_pool(fmpz ** res, const fmpz * f, slong flen, slong n, const fmpz * g, slong glen, const fmpz * ginv, slong ginvlen, const fmpz_mod_ctx_t p, thread_pool_handle * threads, slong num_threads) noexcept
    void fmpz_mod_poly_powers_mod_bsgs(fmpz_mod_poly_struct * res, const fmpz_mod_poly_t f, slong n, const fmpz_mod_poly_t g, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_frobenius_powers_2exp_precomp(fmpz_mod_poly_frobenius_powers_2exp_t pow, const fmpz_mod_poly_t f, const fmpz_mod_poly_t finv, ulong m, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_frobenius_powers_2exp_clear(fmpz_mod_poly_frobenius_powers_2exp_t pow, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_frobenius_power(fmpz_mod_poly_t res, fmpz_mod_poly_frobenius_powers_2exp_t pow, const fmpz_mod_poly_t f, ulong m, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_frobenius_powers_precomp(fmpz_mod_poly_frobenius_powers_t pow, const fmpz_mod_poly_t f, const fmpz_mod_poly_t finv, ulong m, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_frobenius_powers_clear(fmpz_mod_poly_frobenius_powers_t pow, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_divrem_basecase(fmpz * Q, fmpz * R, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_t invB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_divrem_basecase(fmpz_mod_poly_t Q, fmpz_mod_poly_t R, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_divrem_newton_n_preinv (fmpz * Q, fmpz * R, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz * Binv, slong lenBinv, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_divrem_newton_n_preinv(fmpz_mod_poly_t Q, fmpz_mod_poly_t R, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_poly_t Binv, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_div_newton_n_preinv (fmpz * Q, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz * Binv, slong lenBinv, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_div_newton_n_preinv(fmpz_mod_poly_t Q, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_poly_t Binv, const fmpz_mod_ctx_t ctx) noexcept
    ulong fmpz_mod_poly_remove(fmpz_mod_poly_t f, const fmpz_mod_poly_t g, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_rem_basecase(fmpz * R, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_t invB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_rem_basecase(fmpz_mod_poly_t R, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_div(fmpz * Q, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_t invB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_div(fmpz_mod_poly_t Q, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_divrem(fmpz * Q, fmpz * R, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_t invB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_divrem(fmpz_mod_poly_t Q, fmpz_mod_poly_t R, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_divrem_f(fmpz_t f, fmpz_mod_poly_t Q, fmpz_mod_poly_t R, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_rem(fmpz * R, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_t invB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_rem_f(fmpz_t f, fmpz_mod_poly_t R, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_rem(fmpz_mod_poly_t R, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    int _fmpz_mod_poly_divides_classical(fmpz * Q, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_divides_classical(fmpz_mod_poly_t Q, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    int _fmpz_mod_poly_divides(fmpz * Q, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_divides(fmpz_mod_poly_t Q, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_inv_series(fmpz * Qinv, const fmpz * Q, slong Qlen, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_inv_series(fmpz_mod_poly_t Qinv, const fmpz_mod_poly_t Q, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_inv_series_f(fmpz_t f, fmpz_mod_poly_t Qinv, const fmpz_mod_poly_t Q, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_div_series(fmpz * Q, const fmpz * A, slong Alen, const fmpz * B, slong Blen, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_div_series(fmpz_mod_poly_t Q, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_make_monic(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_make_monic_f(fmpz_t f, fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_gcd(fmpz * G, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_gcd(fmpz_mod_poly_t G, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_gcd_euclidean_f(fmpz_t f, fmpz * G, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_gcd_euclidean_f(fmpz_t f, fmpz_mod_poly_t G, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_gcd_f(fmpz_t f, fmpz * G, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_gcd_f(fmpz_t f, fmpz_mod_poly_t G, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_hgcd(fmpz **M, slong * lenM, fmpz * A, slong * lenA, fmpz * B, slong * lenB, const fmpz * a, slong lena, const fmpz * b, slong lenb, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_xgcd_euclidean_f(fmpz_t f, fmpz * G, fmpz * S, fmpz * T, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_t invB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_xgcd_euclidean_f(fmpz_t f, fmpz_mod_poly_t G, fmpz_mod_poly_t S, fmpz_mod_poly_t T, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_xgcd(fmpz * G, fmpz * S, fmpz * T, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_t invB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_xgcd(fmpz_mod_poly_t G, fmpz_mod_poly_t S, fmpz_mod_poly_t T, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_xgcd_f(fmpz_t f, fmpz_mod_poly_t G, fmpz_mod_poly_t S, fmpz_mod_poly_t T, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_gcdinv_euclidean(fmpz * G, fmpz * S, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_t invA, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_gcdinv_euclidean(fmpz_mod_poly_t G, fmpz_mod_poly_t S, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_gcdinv_euclidean_f(fmpz_t f, fmpz * G, fmpz * S, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_t invA, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_gcdinv_euclidean_f(fmpz_t f, fmpz_mod_poly_t G, fmpz_mod_poly_t S, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_gcdinv(fmpz * G, fmpz * S, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_gcdinv_f(fmpz_t f, fmpz * G, fmpz * S, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_gcdinv(fmpz_mod_poly_t G, fmpz_mod_poly_t S, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_gcdinv_f(fmpz_t f, fmpz_mod_poly_t G, fmpz_mod_poly_t S, const fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_ctx_t ctx) noexcept
    int _fmpz_mod_poly_invmod(fmpz * A, const fmpz * B, slong lenB, const fmpz * P, slong lenP, const fmpz_mod_ctx_t ctx) noexcept
    int _fmpz_mod_poly_invmod_f(fmpz_t f, fmpz * A, const fmpz * B, slong lenB, const fmpz * P, slong lenP, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_invmod(fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_poly_t P, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_invmod_f(fmpz_t f, fmpz_mod_poly_t A, const fmpz_mod_poly_t B, const fmpz_mod_poly_t P, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_minpoly_bm(fmpz * poly, const fmpz * seq, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_minpoly_bm(fmpz_mod_poly_t poly, const fmpz * seq, slong len, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_minpoly_hgcd(fmpz * poly, const fmpz * seq, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_minpoly_hgcd(fmpz_mod_poly_t poly, const fmpz * seq, slong len, const fmpz_mod_ctx_t ctx) noexcept
    slong _fmpz_mod_poly_minpoly(fmpz * poly, const fmpz * seq, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_minpoly(fmpz_mod_poly_t poly, const fmpz * seq, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_resultant_euclidean(fmpz_t res, const fmpz * poly1, slong len1, const fmpz * poly2, slong len2, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_resultant_euclidean(fmpz_t r, const fmpz_mod_poly_t f, const fmpz_mod_poly_t g, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_resultant_hgcd(fmpz_t res, const fmpz * A, slong lenA, const fmpz * B, slong lenB, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_resultant_hgcd(fmpz_t res, const fmpz_mod_poly_t f, const fmpz_mod_poly_t g, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_resultant(fmpz_t res, const fmpz * poly1, slong len1, const fmpz * poly2, slong len2, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_resultant(fmpz_t res, const fmpz_mod_poly_t f, const fmpz_mod_poly_t g, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_discriminant(fmpz_t d, const fmpz * poly, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_discriminant(fmpz_t d, const fmpz_mod_poly_t f, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_derivative(fmpz * res, const fmpz * poly, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_derivative(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_evaluate_fmpz(fmpz_t res, const fmpz * poly, slong len, const fmpz_t a, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_evaluate_fmpz(fmpz_t res, const fmpz_mod_poly_t poly, const fmpz_t a, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_evaluate_fmpz_vec_iter(fmpz * ys, const fmpz * coeffs, slong len, const fmpz * xs, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_evaluate_fmpz_vec_iter(fmpz * ys, const fmpz_mod_poly_t poly, const fmpz * xs, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_evaluate_fmpz_vec_fast_precomp(fmpz * vs, const fmpz * poly, slong plen, fmpz_poly_struct * const * tree, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_evaluate_fmpz_vec_fast(fmpz * ys, const fmpz * poly, slong plen, const fmpz * xs, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_evaluate_fmpz_vec_fast(fmpz * ys, const fmpz_mod_poly_t poly, const fmpz * xs, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_evaluate_fmpz_vec(fmpz * ys, const fmpz * coeffs, slong len, const fmpz * xs, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_evaluate_fmpz_vec(fmpz * ys, const fmpz_mod_poly_t poly, const fmpz * xs, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_compose(fmpz * res, const fmpz * poly1, slong len1, const fmpz * poly2, slong len2, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_compose(fmpz_mod_poly_t res, const fmpz_mod_poly_t poly1, const fmpz_mod_poly_t poly2, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_invsqrt_series(fmpz * g, const fmpz * h, slong hlen, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_invsqrt_series(fmpz_mod_poly_t g, const fmpz_mod_poly_t h, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_sqrt_series(fmpz * g, const fmpz * h, slong hlen, slong n, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_sqrt_series(fmpz_mod_poly_t g, const fmpz_mod_poly_t h, slong n, const fmpz_mod_ctx_t ctx) noexcept
    int _fmpz_mod_poly_sqrt(fmpz * s, const fmpz * p, slong n, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_sqrt(fmpz_mod_poly_t s, const fmpz_mod_poly_t p, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_compose_mod(fmpz * res, const fmpz * f, slong lenf, const fmpz * g, const fmpz * h, slong lenh, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_compose_mod(fmpz_mod_poly_t res, const fmpz_mod_poly_t f, const fmpz_mod_poly_t g, const fmpz_mod_poly_t h, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_compose_mod_horner(fmpz * res, const fmpz * f, slong lenf, const fmpz * g, const fmpz * h, slong lenh, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_compose_mod_horner(fmpz_mod_poly_t res, const fmpz_mod_poly_t f, const fmpz_mod_poly_t g, const fmpz_mod_poly_t h, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_compose_mod_brent_kung(fmpz * res, const fmpz * f, slong len1, const fmpz * g, const fmpz * h, slong len3, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_compose_mod_brent_kung(fmpz_mod_poly_t res, const fmpz_mod_poly_t f, const fmpz_mod_poly_t g, const fmpz_mod_poly_t h, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_reduce_matrix_mod_poly (fmpz_mat_t A, const fmpz_mat_t B, const fmpz_mod_poly_t f, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_precompute_matrix_worker(void * arg_ptr) noexcept
    void _fmpz_mod_poly_precompute_matrix (fmpz_mat_t A, const fmpz * f, const fmpz * g, slong leng, const fmpz * ginv, slong lenginv, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_precompute_matrix(fmpz_mat_t A, const fmpz_mod_poly_t f, const fmpz_mod_poly_t g, const fmpz_mod_poly_t ginv, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_compose_mod_brent_kung_precomp_preinv_worker(void * arg_ptr) noexcept
    void _fmpz_mod_poly_compose_mod_brent_kung_precomp_preinv(fmpz * res, const fmpz * f, slong lenf, const fmpz_mat_t A, const fmpz * h, slong lenh, const fmpz * hinv, slong lenhinv, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_compose_mod_brent_kung_precomp_preinv(fmpz_mod_poly_t res, const fmpz_mod_poly_t f, const fmpz_mat_t A, const fmpz_mod_poly_t h, const fmpz_mod_poly_t hinv, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_compose_mod_brent_kung_preinv(fmpz * res, const fmpz * f, slong lenf, const fmpz * g, const fmpz * h, slong lenh, const fmpz * hinv, slong lenhinv, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_compose_mod_brent_kung_preinv(fmpz_mod_poly_t res, const fmpz_mod_poly_t f, const fmpz_mod_poly_t g, const fmpz_mod_poly_t h, const fmpz_mod_poly_t hinv, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_compose_mod_brent_kung_vec_preinv(fmpz_mod_poly_struct * res, const fmpz_mod_poly_struct * polys, slong len1, slong l, const fmpz * g, slong glen, const fmpz * h, slong lenh, const fmpz * hinv, slong lenhinv, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_compose_mod_brent_kung_vec_preinv(fmpz_mod_poly_struct * res, const fmpz_mod_poly_struct * polys, slong len1, slong n, const fmpz_mod_poly_t g, const fmpz_mod_poly_t h, const fmpz_mod_poly_t hinv, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_compose_mod_brent_kung_vec_preinv_threaded_pool(fmpz_mod_poly_struct * res, const fmpz_mod_poly_struct * polys, slong lenpolys, slong l, const fmpz * g, slong glen, const fmpz * poly, slong len, const fmpz * polyinv, slong leninv, const fmpz_mod_ctx_t ctx, thread_pool_handle * threads, slong num_threads) noexcept
    void fmpz_mod_poly_compose_mod_brent_kung_vec_preinv_threaded_pool(fmpz_mod_poly_struct * res, const fmpz_mod_poly_struct * polys, slong len1, slong n, const fmpz_mod_poly_t g, const fmpz_mod_poly_t poly, const fmpz_mod_poly_t polyinv, const fmpz_mod_ctx_t ctx, thread_pool_handle * threads, slong num_threads) noexcept
    void fmpz_mod_poly_compose_mod_brent_kung_vec_preinv_threaded(fmpz_mod_poly_struct * res, const fmpz_mod_poly_struct * polys, slong len1, slong n, const fmpz_mod_poly_t g, const fmpz_mod_poly_t poly, const fmpz_mod_poly_t polyinv, const fmpz_mod_ctx_t ctx) noexcept
    fmpz_poly_struct ** _fmpz_mod_poly_tree_alloc(slong len) noexcept
    void _fmpz_mod_poly_tree_free(fmpz_poly_struct ** tree, slong len) noexcept
    void _fmpz_mod_poly_tree_build(fmpz_poly_struct ** tree, const fmpz * roots, slong len, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_radix_init(fmpz **Rpow, fmpz **Rinv, const fmpz * R, slong lenR, slong k, const fmpz_t invL, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_radix_init(fmpz_mod_poly_radix_t D, const fmpz_mod_poly_t R, slong degF, const fmpz_mod_ctx_t ctx) noexcept
    void _fmpz_mod_poly_radix(fmpz **B, const fmpz * F, fmpz **Rpow, fmpz **Rinv, slong degR, slong k, slong i, fmpz * W, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_radix(fmpz_mod_poly_struct **B, const fmpz_mod_poly_t F, const fmpz_mod_poly_radix_t D, const fmpz_mod_ctx_t ctx) noexcept
    int _fmpz_mod_poly_fprint(FILE * file, const fmpz * poly, slong len, const fmpz_t p) noexcept
    int fmpz_mod_poly_fprint(FILE * file, const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_fprint_pretty(FILE * file, const fmpz_mod_poly_t poly, const char * x, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_print(const fmpz_mod_poly_t poly, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_poly_print_pretty(const fmpz_mod_poly_t poly, const char * x, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_inflate(fmpz_mod_poly_t result, const fmpz_mod_poly_t input, ulong inflation, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_poly_deflate(fmpz_mod_poly_t result, const fmpz_mod_poly_t input, ulong deflation, const fmpz_mod_ctx_t ctx) noexcept
    ulong fmpz_mod_poly_deflation(const fmpz_mod_poly_t input, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_berlekamp_massey_init(fmpz_mod_berlekamp_massey_t B, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_berlekamp_massey_clear(fmpz_mod_berlekamp_massey_t B, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_berlekamp_massey_start_over(fmpz_mod_berlekamp_massey_t B, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_berlekamp_massey_add_points(fmpz_mod_berlekamp_massey_t B, const fmpz * a, slong count, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_berlekamp_massey_add_zeros(fmpz_mod_berlekamp_massey_t B, slong count, const fmpz_mod_ctx_t ctx) noexcept
    void fmpz_mod_berlekamp_massey_add_point(fmpz_mod_berlekamp_massey_t B, const fmpz_t a, const fmpz_mod_ctx_t ctx) noexcept
    int fmpz_mod_berlekamp_massey_reduce(fmpz_mod_berlekamp_massey_t B, const fmpz_mod_ctx_t ctx) noexcept
    slong fmpz_mod_berlekamp_massey_point_count(const fmpz_mod_berlekamp_massey_t B) noexcept
    const fmpz * fmpz_mod_berlekamp_massey_points(const fmpz_mod_berlekamp_massey_t B) noexcept
    const fmpz_mod_poly_struct * fmpz_mod_berlekamp_massey_V_poly(const fmpz_mod_berlekamp_massey_t B) noexcept
    const fmpz_mod_poly_struct * fmpz_mod_berlekamp_massey_R_poly(const fmpz_mod_berlekamp_massey_t B) noexcept
