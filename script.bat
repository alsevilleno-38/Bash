@echo off

goto :main

:main
	set string=%1
	for /f "useback tokens=*" %%a in ('%string%') do echo print
	
	
	
goto :eof

@echo on