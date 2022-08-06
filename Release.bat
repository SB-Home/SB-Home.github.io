cd S:\HP-compiling\pelican\test
s:
rmdir S:\HP-compiling\pelican\test\content /s
del S:\HP-compiling\pelican\test\pelicanconf.py

xcopy S:\HP-Release\Home\site S:\HP-compiling\pelican\test /E /F
 
cd S:\HP-compiling\pelican\test
pelican
cd ./output 
python -m http.server

pause

cd S:\HP-Release\Home
rmdir S:\HP-Release\Home\docs /s

pause

xcopy S:\HP-compiling\pelican\test\output\  S:\HP-Release\Home\docs\ /E /F
copy S:\HP-Release\Home\CNAME S:\HP-Release\Home\docs\CNAME 

pause