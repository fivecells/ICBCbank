<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/24
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>
<body>
<div class="layui-container">
    <div class="layui-row" style="text-align: center">
        <h1><font color="red"><b>交易成功</b></font></h1>
    </div>
    <div class="layui-row">
        <table lay-skin="line" lay-size="lg" class="layui-table">
            <colgroup>
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <caption>订单信息</caption>
            <tbody>
            <tr>
                <td>转入账号</td>
                <td>转出金额</td>
            </tr>
            <tr>
                <td>${tf.acceptAccount}</td>
                <td>${tf.money}</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
</body>
</html>
