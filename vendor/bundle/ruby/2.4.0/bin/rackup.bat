@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"c:\Ruby24-x64\bin\ruby.exe" "C:/Users/Brooke/Documents/errata2/ab2/vendor/bundle/ruby/2.4.0/bin/rackup" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"c:\Ruby24-x64\bin\ruby.exe" "%~dpn0" %*
