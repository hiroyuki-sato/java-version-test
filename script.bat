
"%JAVA_HOME%\bin\java" -fullversion

for /f usebackq^ tokens^=4^,5^ delims^=.+^"^   %%i in (`"%JAVA_HOME%\bin\java" -fullversion 2^>^&1`) do echo %%i%%j
