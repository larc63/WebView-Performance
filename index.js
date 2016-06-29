window.addEventListener("load", function () {
    var stat = document.getElementById("status");
    stat.innerText = "starting";
    var p = new PerformanceTest();
    p.init();
    var numberOfRuns = 50;
    var canvasWidth = 400;
    var canvasHeight = 400;

    var canvas = document.getElementById("thecanvas").getContext("2d");

    function paint() {
        canvas.fillStyle = "#fff";
        canvas.fillRect(0, 0, canvasWidth, canvasHeight);
        for (var i = 0; i < 400; i++) {
            for (var j = 0; j < 400; j++) {
                if (j === i) {
                    canvas.fillStyle = "#000";
                    canvas.fillRect(i, j, 1, 1);
                }
                if (i === (400 - j)) {
                    canvas.fillStyle = "#00F";
                    canvas.fillRect(i - numberOfRuns, j - numberOfRuns, 1, 1);
                }
                if (j === 200 - numberOfRuns) {
                    canvas.fillStyle = "#F00";
                    canvas.fillRect(i - numberOfRuns, j - numberOfRuns, 1, 1);
                }
            }
        }
    }

    function timeout() {
        setTimeout(function () {
            if (numberOfRuns > 0) {
                //                stat.innerText = numberOfRuns + " runs remaining";
                p.run();
                paint();
                numberOfRuns--;
                timeout();
            } else {
                var now = Date.now();
                var dt = now - lastUpdate;
                stat.innerText = "test took " + dt / 1000 + " seconds";
                console.log(dt);
                paint();
                //report to java
                app.log(dt);
                app.exit();
            }
        }, 0);
    }



    var lastUpdate = Date.now();
    //    timeout();
    setInterval(function () {
        if (numberOfRuns > 0) {
            //                stat.innerText = numberOfRuns + " runs remaining";
            p.run();
            paint();
            numberOfRuns--;
        } else {
            var now = Date.now();
            var dt = now - lastUpdate;
            stat.innerText = "test took " + dt / 1000 + " seconds";
            console.log(dt);
            paint();
            //report to java
            app.log(dt);
            app.exit();
        }
    }, 30);
});