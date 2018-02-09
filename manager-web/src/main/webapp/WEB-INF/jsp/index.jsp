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
    <title>moneybank-index</title>
    <link href="js/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="js/bootstrap-table/dist/bootstrap-table.css">
    <link rel="stylesheet" href="js/bootstrap-tab/sample/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="js/bootstrap-tab/css/bootstrap-tab.css">
    <link rel="stylesheet" href="js/bootstrap-validator/dist/css/bootstrapValidator.min.css"/>
    <link href="https://cdn.bootcss.com/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
<div class="row">
    <div class="col-md-12 col-xs-12" align="center">
        <%--走动时间容器--%>
        <div><div id="Clock" style="font-size: 20px; color:#000000;float: left"></div>
            <h2>MoneyBank后台管理平台</h2></div>
        <%--退出登录确认--%>
        <div style="float: right"><img src="images/logout.jpg" style="width: 15%">&nbsp;&nbsp;<a href="javascript:logout()">退出登陆</a></div>
    </div>
    <div class="col-md-2 col-xs-2">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-xs-2">
                    <div id="treeview5" class=""></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-10 col-xs-10" align="center">
        <div id="tabContainer"></div>
    </div>
</div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<script src="js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script src="js/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<script src="js/bootstrap-tab/js/bootstrap-tab.js"></script>
<script src="js/moment-with-locales.js"></script>
<script src="js/common.js"></script>
<script src="js/bootstrap-validator/dist/js/bootstrapValidator.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript">
    bank.registermenu();
</script>
<script>
    bank.registermenu();
    $("#tabContainer").tabs({
        data: [{
            id: 'home',
            text: '欢迎页面',
            url: "table-welcome",
        }],
    })

    function logout() {
        var f = confirm("确定要退出吗?")
        if(f){
            location.href = "login-waiter";
        }
    }

</script>
<%--页头实时走动的时间--%>
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
</body>
</html>

