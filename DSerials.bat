@echo off

Del "C:\Windows\Temp\currentSerials.txt"
mkdir "C:\Windows\Temp"
set "outputFile=C:\Windows\Temp\CSerials.txt"
set "savedFile=C:\Windows\SSerials.txt"

if not exist "%savedFile%" (
wmic diskdrive get serialnumber > "%savedFile%"
)

wmic diskdrive get serialnumber > "%outputFile%"
exit