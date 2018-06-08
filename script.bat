
"%JAVA_HOME%\bin\java" -fullversion
@echo off

rem JDK10 java full version "10.0.1+10"
rem JDK9  java full version "9.0.4+11"
rem JDK8  java full version "1.8.0_162-b12"

for /f usebackq^ tokens^=4^,5^ delims^=.+^"^   %%i in (`java -fullversion 2^>^&1`) do (

  IF %%i == 1 (
    IF %%j == 8 (
      set JDK=8
    ) ELSE (
      echo "unsupported"
    )
  ) ELSE (
    set JDK=%%i
  )
)
echo %JDK%

