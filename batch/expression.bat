Rem turn off the display of command execution
@echo off
:: in order to enable variable delay, variable should be put into !!
setlocal EnableDelayedExpansion
:: enable extension support
setlocal EnableExtensions

:: create variable a with value 1
:: /a is needed only for numberic value
set /a a=1
:: create variable b with value "string"
set /a b=string
:: c = [1, 2, "str", true, false]
set /a c_0=1
set /a c_1=2
set c_2=str
set /a c_3=1
set /a c_4=0
:: a = 1+2
set /a a=^(1 + 2^)
:: b=a*7
set /a b=^(!a! * 7^)
:: c="Concat"
set c=Concat
:: d = c++b
set d=!c!!b!

:: math operators
+=
-=
*=
/=
%=

