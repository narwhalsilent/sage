# distutils: libraries = flint
# distutils: depends = flint/fmpz_mpoly_factor.h

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
    void fmpz_mpoly_factor_init(fmpz_mpoly_factor_t f, const fmpz_mpoly_ctx_t ctx) noexcept
    void fmpz_mpoly_factor_clear(fmpz_mpoly_factor_t f, const fmpz_mpoly_ctx_t ctx) noexcept
    void fmpz_mpoly_factor_swap(fmpz_mpoly_factor_t f, fmpz_mpoly_factor_t g, const fmpz_mpoly_ctx_t ctx) noexcept
    slong fmpz_mpoly_factor_length(const fmpz_mpoly_factor_t f, const fmpz_mpoly_ctx_t ctx) noexcept
    void fmpz_mpoly_factor_get_constant_fmpz(fmpz_t c, const fmpz_mpoly_factor_t f, const fmpz_mpoly_ctx_t ctx) noexcept
    void fmpz_mpoly_factor_get_constant_fmpq(fmpq_t c, const fmpz_mpoly_factor_t f, const fmpz_mpoly_ctx_t ctx) noexcept
    void fmpz_mpoly_factor_get_base(fmpz_mpoly_t B, const fmpz_mpoly_factor_t f, slong i, const fmpz_mpoly_ctx_t ctx) noexcept
    void fmpz_mpoly_factor_swap_base(fmpz_mpoly_t B, fmpz_mpoly_factor_t f, slong i, const fmpz_mpoly_ctx_t ctx) noexcept
    slong fmpz_mpoly_factor_get_exp_si(fmpz_mpoly_factor_t f, slong i, const fmpz_mpoly_ctx_t ctx) noexcept
    void fmpz_mpoly_factor_sort(fmpz_mpoly_factor_t f, const fmpz_mpoly_ctx_t ctx) noexcept
    int fmpz_mpoly_factor_squarefree(fmpz_mpoly_factor_t f, const fmpz_mpoly_t A, const fmpz_mpoly_ctx_t ctx) noexcept
    int fmpz_mpoly_factor(fmpz_mpoly_factor_t f, const fmpz_mpoly_t A, const fmpz_mpoly_ctx_t ctx) noexcept
