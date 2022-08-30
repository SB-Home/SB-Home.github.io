echo Release:Delete Old

cd C:\HP-Release\Home
C:
rmdir C:\HP-Release\Home\docs /s/q

echo Release:Copy Start

xcopy C:\HP-compiling\pelican\test\output\  C:\HP-Release\Home\docs\ /E /F
copy C:\HP-Release\Home\CNAME C:\HP-Release\Home\docs\CNAME 

echo Release:Copy End
pause