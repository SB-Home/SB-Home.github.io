echo Test:Delete content、pelicanconf.py

cd C:\HP-compiling\pelican\test
C:
rmdir C:\HP-compiling\pelican\test\output /s/q
rmdir C:\HP-compiling\pelican\test\content /s/q
del C:\HP-compiling\pelican\test\pelicanconf.py

echo Test:Delete End
echo Test:Copy Start

xcopy C:\HP-Release\Home\site C:\HP-compiling\pelican\test /E /F

echo Test:Copy End
echo Test:Start

cd C:\HP-compiling\pelican\test
pelican
cd ./output 

echo Test:WEB Serves Start 

python -m http.server

pause
