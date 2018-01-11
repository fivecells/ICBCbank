<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/7
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>服务员登陆页面</title>
    <link href="js/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
        span{
            font-size: 18px;
            color: red;
        }
    </style>
</head>
<body style="background-size: 100%;background-image: url('${pageContext.request.contextPath}/images/bank-waiter1.jpg')">
    <form action="index" method="post" id="myform">
        <div class="col-md-12 col-xs-12" align="center" style="filter:alpha(Opacity=80);-moz-opacity:0.5;opacity: 0.8;">
            <div class="jumbotron">
                <h1>管理员登录入口</h1>
            </div>
        </div>
        <div class="col-md-8 col-xs-8" align="center"></div>

        <div class="col-md-4 col-xs-4" style="background: rgba(105,105,105, 0.5); " align="center">
            <div class="form-group" style="margin-top: 25px">
                <label for="username">账号</label>
                <input type="text" class="form-control" name="username" id="username" placeholder="Username" style="width: 300px">
                <span id="sp1"></span>
            </div>
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Password" style="width: 300px">
                <span id="sp2"></span>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox"   name="auto" value="1"> 自动登陆
                </label>
            </div>
            <div style="width: 300px">
                <button type="submit" class="btn btn-default btn-block" style="margin-bottom: 25px" >登陆</button>
            </div>
        </div>
    </form>

<script src="js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>

<script>
    if(${user!=null}){

        location.href="${pageContext.request.contextPath}/autologin";


    }

</script>
    <script type="text/javascript">
        $(function(){
            $("#myform").submit(function(e){
                var username=$("#username").val();
                var password=$("#password").val();
                var flag1=false;
                var flag2=false;

                if(username==null||username==""){
                    $("#sp1").html(" Username is empty!");
                }else{
                    $("#sp1").html("");
                    flag1 = true;
                }
                if(password==null||password==""){
                    $("#sp2").html("Password is empty!");
                }else{
                    $("#sp2").html("");
                    flag2 = true;
                }

                if(!(flag1&flag2)){
                    e.preventDefault();
                }
            });
        })

    </script>

</body>
</html>