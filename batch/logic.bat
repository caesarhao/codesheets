@echo off
setlocal EnableDelayedExpansion
setlocal EnableExtensions

set /a a=3
:: a == 2
!a! EQU 2
:: a != 2
!a! NEQ 2
:: a > 2
!a! GTR 2
:: a >= 2
!a! GEQ 2
:: a < 2
!a! LSS 2
:: a <= 2
!a! LEQ 2
:: !true
not 1
:: true && true
1 and 1
:: true || true
1 or 1
:: bit and
!a! & 1
:: bit or
!a! | 1
:: bit xor
^!a!

