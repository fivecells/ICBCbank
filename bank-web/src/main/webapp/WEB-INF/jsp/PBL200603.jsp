<%--
  Created by IntelliJ IDEA.
  User: wzh
  Date: 2018/1/21
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>贵金属</title>
    <link href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
</head>
<body style="background-color: rgb(242, 242, 242)">
<div class="col-md-2 col-xs-2">
    <div style="background-color: rgb(253,165,85);height: 520px;color: white;padding-top: 10px;width: 123%">
        <span style="margin: 10px;font-size: 20px" >账户贵金属</span><p></p>
        <ul>
            <li>我的</li><p></p>
            <li>产品介绍</li><p></p>
            <li>交易规则</li><p></p>
            <li>交易协议</li>
        </ul>
    </div>
    <div style="background-color: rgb(254,129,121);height: 285px;color: white;padding-top: 10px;margin-top: 40px;width: 123%">
        <span style="margin: 10px;font-size: 20px" >代理贵金属现货</span><p></p>
        <ul>
            <li>我的</li><p></p>
            <li>交易协议</li><p></p>
            <li>风险指示书</li><p></p>
            <li>交易规则</li><p></p>
            <li>客户声明</li>
        </ul>
    </div>
</div>
<div class="col-md-8 col-xs-8">
    <div  style="background-color: white;height: 520px;width: 100%">
    <table id="metalList" style="width: 100%;font-size: 3px"></table>
    <div align="right" style="font-size: 2px">更新时间：<span id="timeSpan"></span></div>
    </div>
    <div style="background-color: white;height: 285px;margin-top: 40px;width: 100%;">
        <table id="metalPoxyList" style="width: 100%;font-size: 3px;"></table>
        <div align="right" style="font-size: 2px">更新时间：<span id="timePoxySpan"></span></div>
    </div>
</div>
<div class="col-md-2 col-xs-2">
    <div style="background-color: white;height: 400px">
        <table border="0px" width="100%" height="100%" >
            <tr height="10%"><td colspan="2">工具助手</td></tr>
            <tr align="center">
                <td style="border-top: 1px dashed rgb(222,222,222);border-right: 1px dashed rgb(222,222,222)">
                    <a href="javascript:void(0);"><img src="http://120.79.90.102:81/images/gj1.bmp" width="80%"></a>
                </td>
                <td  style="border-top: 1px dashed rgb(222,222,222);width: 50%">
                    <a href="javascript:void(0);"><img src="http://120.79.90.102:81/images/gj2.bmp" width="100%"></a>
                </td>
            </tr>
            <tr  align="center">
                <td style="border-top: 1px dashed rgb(222,222,222);border-right: 1px dashed rgb(222,222,222)">
                    <a href="javascript:void(0);"><img src="http://120.79.90.102:81/images/gj3.bmp" width="100%"></a>
                </td>
                <td style="border-top: 1px dashed rgb(222,222,222);width: 50%">
                    <a href="javascript:void(0);"><img src="http://120.79.90.102:81/images/gj4.bmp" width="70%"></a>
                </td>
            </tr>
            <tr  align="center">
                <td style="border-top: 1px dashed rgb(222,222,222);border-right: 1px dashed rgb(222,222,222)">
                    <a href="javascript:void(0);"><img src="http://120.79.90.102:81/images/gj5.bmp" width="100%"></a>
                </td>
                <td style="border-top: 1px dashed rgb(222,222,222);width: 50%">
                    <a href="javascript:void(0);"><img src="http://120.79.90.102:81/images/gj6.bmp" width="90%"></a>
                </td>
            </tr>
        </table>
    </div>
    <div style="background-color: white;height: 400px;margin-top: 30px">
        <table border="0px" width="100%" height="100%">
            <tr height="10%"><td>常见问题</td></tr>
            <tr><td style="border-top: 1px dashed rgb(222,222,222);font-size: 8px;">
                <ul>
                    <li><a href="javascript:void(0);">账户贵金属最小交易数量是多少？</a></li><p></p>
                    <li><a href="javascript:void(0);">账户贵金属最小交易数量是多少？</a></li><p></p>
                    <li><a href="javascript:void(0);">什么是账户贵金属?</a></li><p></p>
                    <li><a href="javascript:void(0);">什么是账户贵金属指数？</a></li><p></p>
                    <li><a href="javascript:void(0);">账户贵金属有哪些交易品种？ </a></li><p></p>
                    <li><a href="javascript:void(0);">账户贵金属最小交易数量是多少？</a></li><p></p>
                    <li><a href="javascript:void(0);">怎样申请开办账户贵金属交易？</a></li><p></p>
                    <li><a href="javascript:void(0);">什么是主动积存？</a></li><p></p>
                    <li><a href="javascript:void(0);">什么是定期定额平均投资法？</a></li>
                </ul>
            </td></tr>
        </table>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-table.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-table-zh-CN.js"></script>
<%--账户贵金属--%>
<script>
    $('#metalList').bootstrapTable({
        method:'POST',
        url: '${pageContext.request.contextPath}/metalList',
        columns: [
            {field: 'metalName', title: '品种'},
            {field: 'metalStatusShow', title: '涨跌'},
            {field: 'buyPrice', title: '银行买入价'},
            {field: 'sellPrice', title: '银行卖出价'},
            {field: 'priceAvg', title: '中间价'},
            {field: 'fluctuationShow', title: '当日涨跌值'},
            {field: 'fluPerDayShow', title: '当日涨跌幅'},
            {field: 'fluPerYearShow', title: '当年涨跌幅'},
            {field: 'buy', title: '操作'}
        ]
    });
</script>
<%--代理贵金属现货--%>
<script>
    $('#metalPoxyList').bootstrapTable({
        method:'POST',
        url: '${pageContext.request.contextPath}/metalPoxyList',
        columns: [
            {field: 'metalName', title: '品种'},
            {field: 'presentPrice', title: '当前价'},
            {field: 'metalStatusShow', title: '涨跌'},
            {field: 'fluctuationShow', title: '涨跌幅'},
            {field: 'dealNumber', title: '成交量(手)'},
            {field: 'openingPrice', title: '开盘价'},
            {field: 'yesterdayPrice', title: '昨收价'},
            {field: 'maxPrice', title: '最高价'},
            {field: 'minPrice', title: '最低价'},
            {field: 'buy', title: '操作'}
        ]
    });
</script>
<script>
    $(function () {
        var date = new Date();
        var yyyy = date.getFullYear();
        var MM = date.getMonth()+1;
        var dd = date.getDate();
        var HH = date.getHours();
        var mm = date.getMinutes();
        var ss = date.getSeconds();
        $('#timeSpan').html(yyyy+'-'+MM+'-'+dd+' '+HH+':'+mm+':'+ss);
        $('#timePoxySpan').html(yyyy+'-'+MM+'-'+dd+' '+HH+':'+mm+':'+ss);
    })
</script>
</body>
</html>
