<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wzh
  Date: 2018/2/2
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OpenFund详情页</title>
    <link href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</head>
<body style="background-color: rgb(242, 242, 242)">
<table class="table table-hover" style="width: auto;height: 400px">
    <thead>
    <tr class="active" style="font-size: 8px">
        <th>基金代号</th>
        <th>基金名称</th>
        <th>前单位净值</th>
        <th>单位净值</th>
        <th>累计单位净值</th>
        <th>净值涨跌额</th>
        <th>净值增长率(%)</th>
        <th>净值日期</th>
        <th>数据更新时间</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${openList}" var="openFund">
        <tr>
            <td>${openFund.s1}</td>
            <td>${openFund.s2}</td>
            <td>${openFund.s3}</td>
            <td>${openFund.s4}</td>
            <td>${openFund.s5}</td>
            <td>${openFund.s6}</td>
            <td>${openFund.s7}</td>
            <td>${openFund.s8}</td>
            <td>${openFund.s9}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script>
    $(function () {
        $("tbody tr:odd").attr('class','danger');
    })
</script>
</body>
</html>