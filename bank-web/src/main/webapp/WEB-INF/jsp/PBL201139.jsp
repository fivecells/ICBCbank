<%--
  Created by IntelliJ IDEA.
  User: wzh
  Date: 2018/1/25
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>理财</title>
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
                <img src="http://120.79.90.102:81/images/financing1.jpg" alt="展示图1">
            </td>
            <td>
                <img src="http://120.79.90.102:81/images/financing2.jpg" alt="展示图2">
            </td>
            <td>
                <img src="http://120.79.90.102:81/images/financing3.jpg" alt="展示图3">
            </td>
            <td>
                <img src="http://120.79.90.102:81/images/financing4.jpg" alt="展示图4">
            </td>
        </tr>
    </table>
</div>
<%--选项卡区域--%>
<div class="col-md-9 col-xs-9" align="center" style="background-color: white;height: 1050px">
    <div id="tab-financing"></div>
</div>
<%--选项卡右侧热销排行区块--%>
<div class="col-md-3 col-xs-3">
    <div align="center" style="height: 40px;color: #0000FF;padding: 10px;background-color: white"><img src="http://120.79.90.102:81/images/jrrl-nor.png" alt="小图标" height="90%"><a href="javascrpit:void(0)">&nbsp;查看全部产品信息要素</a></div>
    <div style="height: auto;background-color: white;margin-top: 10px;padding-top: 10px">
        <table>
            <tr><td style="padding-bottom: 10px"><img src="http://120.79.90.102:81/images/bi.jpg" alt="小图标">&nbsp;行情资讯</td></tr>
            <tr><td style="border-top: 1px dashed rgb(222,222,222);font-size: 8px;">
                <ul style="margin-top: 10px">
                    <li><a href="javascript:void(0);">工行金融市场：外币利率市场每日概览(<span class="dateSpan"></span>)</a></li><p></p>
                    <li><a href="javascript:void(0);">工行金融市场：贵金属市场每日概览(<span class="dateSpan"></span>)</a></li><p></p>
                    <li><a href="javascript:void(0);">工行金融市场：原油及其他大宗商品市场每日概览(<span class="dateSpan"></span>)</a></li><p></p>
                    <li><a href="javascript:void(0);">工行金融市场：人民币利率市场每日概览(<span class="dateSpan"></span>)</a></li><p></p>
                    <li><a href="javascript:void(0);">工行金融市场：人民币信用债市场每日概览(<span class="dateSpan"></span>)</a></li><p></p>
                    <li><a href="javascript:void(0);">工行金融市场：人民币汇率市场每日概览(<span class="dateSpan"></span>)</a></li><p></p>
                    <li><a href="javascript:void(0);">工行金融市场：外币汇率市场每日概览(<span class="dateSpan"></span>)</a></li><p></p>
                </ul>
            </td></tr>
        </table>
    </div>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-table.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-table-zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-tab.js"></script>
<script>
    $("#tab-financing").tabs({
        data: [{
            id: 'financingTab1',
            text: '理财产品',
            url: "${pageContext.request.contextPath}/financing_list",
        },{
            id: 'financingTab2',
            text: '我的理财',
            url: "${pageContext.request.contextPath}/financing_my",
        },{
            id: 'financingTab3',
            text: '交易明细',
            url: "${pageContext.request.contextPath}/financing_trade",
        }]
    })
</script>
<script>
    $(function () {
        var date = new Date();
        var yyyy = date.getFullYear();
        var MM = date.getMonth()+1;
        var dd = date.getDate();
        $('.dateSpan').html(yyyy+''+MM+dd);
    })
</script>
</body>
</html>
