setlocal enabledelayedexpansion

for /f %%I in ('where perl') do (
     set perl_cmd=%%I
     goto :EXE_PERL
)

for /f "tokens=1,2,3,* delims=\\" %%A in ('echo ABC\DEF\GHI') do (
		set output=%%A 
)
