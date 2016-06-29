# WebView-Performance

##Description

A simple project that tests the performance capabilities of JavaFX's WebView 

Working with a moderately-sized JavaFX application that uses some performance-intensive javascript find attached a functionally equivalent sample.

In this project you'll find

* A javascript file that does the "run" part of the app as well as take some timing, reporting it back to Java.

* On the java side, theres'a webview that loads the web page that receives log messages (for timing) and an exit signal for program termination.

* The runtests.bat file goes and changes the path, compiles and runs the test app with each update from u40 to u92

*Tests have been performed in windows, which is where the difference is more evident.

## Running

Running the test assumes that you've installed the various java updates at C:\javatemp and that the runtest.bat is at that same folder.

To run the test, simply run the runtest.bat script and you will get a text file named results.txt with the total times for each of the java updates.

## Results 

After running on a Windows 7 computer with an Intel i7 CPU and 16 gb of ram, the test results are:

| Update   | Time (ms) |
| -------- |----------:|
| 1.8.0_40 |   1771    |
| 1.8.0_45 |   1693    |
| 1.8.0_51 |   1716    |
| 1.8.0_60 |   3969    |
| 1.8.0_65 |   3958    |
| 1.8.0_66 |   4059    |
| 1.8.0_74 |   3862    |
| 1.8.0_92 |   4008    |

