echo Test:Delete content、pelicanconf.py

cd S:\HP-compiling\pelican\test
s:
rmdir S:\HP-compiling\pelican\test\output /s/q
rmdir S:\HP-compiling\pelican\test\content /s/q
del S:\HP-compiling\pelican\test\pelicanconf.py

echo Test:Delete End
echo Test:Copy Start

xcopy S:\HP-Release\Home\site S:\HP-compiling\pelican\test /E /F

echo Test:Copy End
echo Test:Start

cd S:\HP-compiling\pelican\test
pelican
cd ./output 

echo Test:WEB Serves Start 

python -m http.server

pause
