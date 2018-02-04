<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wzh
  Date: 2018/1/20
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>基金</title>
    <link href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-tab.css">
</head>
<body style="background-color: rgb(242, 242, 242)">
<%--上面4个图片区域--%>
<div class="col-md-12 col-xs-12">
    <table width="100%" style="margin-bottom: 20px">
        <tr>
            <td>
                <img src="http://120.79.90.102:81/images/fund1.jpg" alt="展示图1">
            </td>
            <td>
                <img src="http://120.79.90.102:81/images/fund2.jpg" alt="展示图2">
            </td>
            <td>
                <img src="http://120.79.90.102:81/images/fund3.jpg" alt="展示图3">
            </td>
            <td>
                <img src="http://120.79.90.102:81/images/fund4.jpg" alt="展示图4">
            </td>
        </tr>
    </table>
</div>
<%--选项卡区域--%>
<div class="col-md-9 col-xs-9" align="center" style="background-color: white;height: 840px">
    <div id="tab-Container"></div>
</div>
<%--选项卡右侧热销排行区块--%>
<div class="col-md-3 col-xs-3" align="center">
    <div style="height: 40px;color: #0000FF;padding: 10px;background-color: white"><img src="http://120.79.90.102:81/images/bi.jpg" alt="小图标" height="90%"><a href="javascrpit:void(0)">投资者教育</a></div>
    <div style="height: auto;background-color: white;margin-top: 10px;padding-top: 10px"><img src="http://120.79.90.102:81/images/hot.jpg" alt="小图标">&nbsp;热销排行
        <table style="background-color: rgb(136,189,255);width: 90%;border-color: rgb(136,189,255);margin-top: 10px" border="2px">
    <c:forEach items="${fundPerList}" var="per">
            <tr bgcolor="white">
                <td>
                    <div style="float: left;color: blue;padding: 11px">近3月涨幅</div>
                    <div style="float: right;color: red">${per.threePer}%<img src="http://120.79.90.102:81/images/in-mon.png"></div>
                </td>
            </tr>
            <tr>
                <td><div style="color: white;padding: 10px">${per.fundName}</div></td>
            </tr>
    </c:forEach>
        </table>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-table.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-table-zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-tab.js"></script>
<script>
    $("#tab-Container").tabs({
        data: [{
            id: 'fundTab1',
            text: '基金产品',
            url: "${pageContext.request.contextPath}/fund_list",
        },{
            id: 'fundTab2',
            text: '我的基金',
            url: "${pageContext.request.contextPath}/fund_my",
        },{
            id: 'fundTab3',
            text: '交易明细',
            url: "${pageContext.request.contextPath}/fund_trade",
        },{
            id: 'fundTab4',
            text: '我的定投',
            url: "${pageContext.request.contextPath}/fund_invest",
        }]
    })
</script>
</body>
</html>