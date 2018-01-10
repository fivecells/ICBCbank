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
</head>
<body>
<div class="container">
<div class="row">
    <div class="col-md-12 col-xs-12" align="center">
        <div><h2>MoneyBank后台管理平台</h2></div>
        <%--退出登录确认--%>
        <div style="float: right"><a href="javascript:logout()">退出登陆</a></div>
    </div>
    <div class="col-md-3 col-xs-3">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-3">
                    <div id="treeview5" class=""></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-9 col-xs-9" align="center">
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
<script>
    bank.registermenu_2();
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
</body>
</html>

