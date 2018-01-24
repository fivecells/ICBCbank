<%--
  Created by IntelliJ IDEA.
  User: mky
  Date: 2018/1/18
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>loginPage</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">

    <style>
        .btn-primary {
            color: #fff;
            background-color: red;
            border-color: red;
        }

        .btn-primary:active {
            color: #fff;
            background-color: #ff2d2d;
            border-color: #ff2d2d;
        }

        .btn-primary:hover {
            color: #fff;
            background-color: #ff2d2d;
            border-color: #ff2d2d;
        }

        .btn-primary:focus {
            color: #fff;
            background-color: #ae0000;
            border-color: #ae0000;
        }

        .btn-primary:focus:active {
            color: #fff;
            background-color: #ae0000;
            border-color: #ae0000;
        }

    </style>

</head>


<body>

<div class="container">

    <form class="form-signin" style="width: 250px;margin: 20px" onsubmit="return false">
        <div style="margin: auto">
            <div style="float: left; margin-left: 5px;"><h2 class="form-signin-heading">登录</h2></div>
            <div style="float: right; margin: 15px 5px 15px 0px;"><img
                    src="${pageContext.request.contextPath}/images/login/erwm.png"></div>
        </div>
        <div class="input-group" style="width: 100%">
            <label for="inputUserName" class="sr-only">用户名</label>
            <span class="input-group-addon" style="height: 34px"><img
                    src="${pageContext.request.contextPath}/images/login/login_username.png" alt=""
                    style="height: 100%"/></span>
            <input type="text" id="inputUserName" name="userName" class="form-control" placeholder="请输入用户名" required=""
                   autofocus="">
        </div>
        <div class="input-group" style="width: 100%">
            <label for="inputPassword" class="sr-only">密码</label>
            <span class="input-group-addon" style="height: 34px"><img
                    src="${pageContext.request.contextPath}/images/login/login_password.png" alt=""
                    style="height: 100%"/></span>
            <input type="password" id="inputPassword" name="userPwd" class="form-control" placeholder="请输入密码"
                   required="">
        </div>

        <div class="input-group" style="width: 65%; margin-top: 10px; float: left">
            <%--<label for="inputPassword" class="sr-only">密码</label>--%>
            <span class="input-group-addon" style="height: 34px"><img
                    src="${pageContext.request.contextPath}/images/login/login_verify.png" alt="" style="height: 100%"/></span>
            <input type="text" id="inputVerify" class="form-control" placeholder="验证码" required="">
        </div>
        <div align="right" style="margin-top: 25px;"><a>忘记密码?</a></div>

        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="checkAccount()" style="margin-top: 15px">登录</button>
    </form>

</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script>
    function checkAccount() {
        var name = $('#inputUserName').val();
        console.log(name);
        $.ajax({
            async: false,
            url: "${pageContext.request.contextPath}/loginin",
            data: {"userName":$('#inputUserName').val(), "userPwd":$('#inputPassword').val()},
            type: "post",
            success: function (data) {
                //data==0验证失败 ==1验证成功
                if (data > 0) {
                    location.href="${pageContext.request.contextPath}/";
                    // return true;
                } else {
                    alert('1');
                    // return false;
                }
            },
            error: function () {
                alert("登录失败");
            }
        });
    }

</script>

</body>
</html>