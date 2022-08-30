set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"

echo Backup:del

rmdir C:\HP-Archive\Home_%ymd% /S /Q

md C:\HP-Archive\Home_%ymd%

xcopy C:\HP-Release\Home\site\ C:\HP-Archive\Home_%ymd%\ /E /F

copy C:\HP-Release\Home\CNAME C:\HP-Archive\Home_%ymd%\CNAME 

echo Backup:OK

pause