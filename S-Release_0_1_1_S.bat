echo Release:Delete Old

cd S:\HP-Release\Home
s:
rmdir S:\HP-Release\Home\docs /s/q

echo Release:Copy Start

xcopy S:\HP-compiling\pelican\test\output\  S:\HP-Release\Home\docs\ /E /F
copy S:\HP-Release\Home\CNAME S:\HP-Release\Home\docs\CNAME 

echo Release:Copy End
pause