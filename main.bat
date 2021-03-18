@echo off
setlocal enabledelayedexpansion

cls
goto :main

:substr
	set content=%~1
	set index=%~2
	set len=%~3
	
	for %%a in (%index%) do (
		if defined len (
			set character=!content:~%%a,%len%!		
			
		) else (
			set character=!content:~%%a!		
		)
	)	
	
	REM echo %~1
	REM echo %~2
	REM echo %~3
	
	goto :eof

:main
	REM mkdir data
	set content="This is a text for the future"
	REM set varname=10	
	set counter=5
	
	
	call :substr %content% 2
	echo %character%
	
	REM call :print content
	
goto :eof

@echo on