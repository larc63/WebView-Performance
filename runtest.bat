set OLD_PATH=%PATH%
set JAVA_TEMP_PATH=C:\javatemp\jdk1.8.0_40\bin
set PATH=%JAVA_TEMP_PATH%;%OLD_PATH%
echo "Testing with path " %JAVA_TEMP_PATH%
javac oracle/src/webview/WebViewSample.java -d oracle/bin
java -cp oracle/bin webview.WebViewSample > results.txt

set JAVA_TEMP_PATH=C:\javatemp\jdk1.8.0_45\bin
set PATH=%JAVA_TEMP_PATH%;%OLD_PATH%
echo "Testing with path " %JAVA_TEMP_PATH%
javac oracle/src/webview/WebViewSample.java -d oracle/bin
java -cp oracle/bin webview.WebViewSample >> results.txt

set JAVA_TEMP_PATH=C:\javatemp\jdk1.8.0_51\bin
set PATH=%JAVA_TEMP_PATH%;%OLD_PATH%
echo "Testing with path " %JAVA_TEMP_PATH%
javac oracle/src/webview/WebViewSample.java -d oracle/bin
java -cp oracle/bin webview.WebViewSample >> results.txt

set JAVA_TEMP_PATH=C:\javatemp\jdk1.8.0_60\bin
set PATH=%JAVA_TEMP_PATH%;%OLD_PATH%
echo "Testing with path " %JAVA_TEMP_PATH%
javac oracle/src/webview/WebViewSample.java -d oracle/bin
java -cp oracle/bin webview.WebViewSample >> results.txt

set JAVA_TEMP_PATH=C:\javatemp\jdk1.8.0_65\bin
set PATH=%JAVA_TEMP_PATH%;%OLD_PATH%
echo "Testing with path " %JAVA_TEMP_PATH%
javac oracle/src/webview/WebViewSample.java -d oracle/bin
java -cp oracle/bin webview.WebViewSample >> results.txt

set JAVA_TEMP_PATH=C:\javatemp\jdk1.8.0_66\bin
set PATH=%JAVA_TEMP_PATH%;%OLD_PATH%
echo "Testing with path " %JAVA_TEMP_PATH%
javac oracle/src/webview/WebViewSample.java -d oracle/bin
java -cp oracle/bin webview.WebViewSample >> results.txt

set JAVA_TEMP_PATH=C:\javatemp\jdk1.8.0_74\bin
set PATH=%JAVA_TEMP_PATH%;%OLD_PATH%
echo "Testing with path " %JAVA_TEMP_PATH%
javac oracle/src/webview/WebViewSample.java -d oracle/bin
java -cp oracle/bin webview.WebViewSample >> results.txt

set JAVA_TEMP_PATH=C:\javatemp\jdk1.8.0_92\bin
set PATH=%JAVA_TEMP_PATH%;C%OLD_PATH%
echo "Testing with path " %JAVA_TEMP_PATH%
javac oracle/src/webview/WebViewSample.java -d oracle/bin
java -cp oracle/bin webview.WebViewSample >> results.txt
REM 102 b04ss
REM set JAVA_TEMP_PATH=C:\javatemp\jdk1.8.0_102\bin
REM set PATH=%JAVA_TEMP_PATH%;%OLD_PATH%
REM echo "Testing with path " %JAVA_TEMP_PATH%
REM javac oracle/src/webview/WebViewSample.java -d oracle/bin
REM java -cp oracle/bin webview.WebViewSample >> results.txt
 
set PATH=%OLD_PATH%
more results.txt