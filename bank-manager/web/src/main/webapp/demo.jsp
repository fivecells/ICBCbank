<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/6
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <title>实时走动的数字时钟</title>
</head>

<script>
    function tick() {
        var hours, minutes, seconds, xfile;
        var intHours, intMinutes, intSeconds;
        var today;
        today = new Date();
        intHours = today.getHours();
        intMinutes = today.getMinutes();
        intSeconds = today.getSeconds();
        if (intHours == 0) {
            hours = "12:";
            xfile = "午夜";
        } else if (intHours < 12) {
            hours = intHours+":";
            xfile = "上午";
        } else if (intHours == 12) {
            hours = "12:";
            xfile = "正午";
        } else {
            intHours = intHours - 12
            hours = intHours + ":";
            xfile = "下午";
        }
        if (intMinutes < 10) {
            minutes = "0"+intMinutes+":";
        } else {
            minutes = intMinutes+":";
        }
        if (intSeconds < 10) {
            seconds = "0"+intSeconds+" ";
        } else {
            seconds = intSeconds+" ";
        }
        timeString = xfile+hours+minutes+seconds;
        Clock.innerHTML = timeString;
        window.setTimeout("tick();", 100);
    }
    window.onload = tick;
</script>

<div id="Clock" align="center" style="font-size: 20px; color:#000000"></div>


<body>

</body>

</html>
