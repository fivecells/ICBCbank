<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/24
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>mybank</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div style="padding-bottom: 50px;padding-top: 20px;"> <span class="glyphicon glyphicon-home" style="color: red;"></span><a href="#">我的网银</a><span class="glyphicon glyphicon-chevron-right" style="color: red;"></span><a href="#">卡包</a>

                <span style="float: right;">最近使用：<a href="#">我的网银</a>|<a href="#">卡列表</a></span>
            </div>
            <div class="tabbable" id="tabs-559762">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-01" data-toggle="tab" class="btn btn-info btn-lg"  style="background-color: red; color: white;" > <span class="glyphicon glyphicon-cog"></span> 卡列表</a>
                    </li>
                    <li>
                        <a href="#panel-02" data-toggle="tab" class="btn btn-info btn-lg"  style="background-color: red; color: white;"  ><span class="glyphicon glyphicon-cog"></span>资产</a>
                    </li>
                    <li>
                        <a href="#panel-03" data-toggle="tab" class="btn btn-info btn-lg"  style="background-color: red; color: white;" ><span class="glyphicon glyphicon-cog"></span>负债</a>
                    </li>
                </ul>
                <div class="tab-content">

                    <div class="tab-pane active" id="panel-01">

                        <c:forEach items="${cards}" var="card">
                        <div  class="row clearfix" style="padding-top: 50px; color:black; margin-top: 30px;">
                            <div class="col-md-4 column">
                                <img alt="120x120"  src="https://i.loli.net/2018/01/24/5a685fdd30a46.jpg">

                            </div>
                            <div class="col-md-6 column">
                                <table border="0" width="400px" height="80px" >
                                    <tr>
                                        <td>卡号</td>
                                        <td>币种</td>
                                        <td>余额</td>
                                        <td>可用余额</td>
                                    </tr>
                                    <tr>
                                        <td>${card.userCardId}</td>
                                        <td>人民币</td>
                                        <td>${card.userCardAmount}</td>
                                        <td>${card.userCardAmount}</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-2 column">
                                <table width="150px" height="20px" >
                                    <tr><td>
                                        <a href="${pageContext.request.contextPath}/PBL20074503?uid=${card.userCardId}"><button style="color: red;">明细</button></a>

                                    </td><td><button style="color: red;">缴费</button></td></tr>
                                    <tr><td><button style="color: red;">汇款</button></td><td><button style="color: red;">理财</button></td></tr>
                                    <tr><td><button style="color: red;">开户网点</button></td><td><button style="color: red;">更多</button></td></tr>
                                </table>
                            </div>
                        </div>
                        </c:forEach>





                        <div class="row clearfix" style="margin-top: 30px;">
                            <div class="col-md-12 column">
                                <div class="panel-group" id="panel-592327">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <a class="panel-title collapsed" data-toggle="collapse" data-parent="#panel-592327" href="#panel-element-800274"> <span class="glyphicon glyphicon-align-justify"></span>投资理财账户</a>
                                        </div>
                                        <div id="panel-element-800274" class="panel-collapse collapse">

                                            <div class="panel-body" >
                                           <center>无</center>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <button><span class="glyphicon glyphicon-plus"></span>添加注册卡</button>
                    </div>


                    <div class="tab-pane" id="panel-02">
                        <div class="row clearfix" style="margin-top: 30px;">
                            <div class="col-md-12 column">
                                <ul class="breadcrumb">
                                    <li>
                                        <a href="#">活期</a>
                                    </li>
                                    <li>
                                        <a href="#">定期</a>
                                    </li>
                                    <li>
                                        <a href="#">投资理财</a>
                                    </li>
                                    <li>
                                        <a href="#">其他产品服务</a>
                                    </li>
                                    <li class="active">
                                        Data
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="row clearfix" style="margin-top: 30px;">
                            <div class="col-md-12 column">
                                <ul class="breadcrumb">
                                    <li>
                                        <span class="glyphicon glyphicon-folder-open"></span> &nbsp;已注册卡片
                                    </li>
                                </ul>
                            </div>
                        </div>




                            <c:forEach items="${cards}" var="card">
                            <c:if test="${card.userCardStatus==1}">
                        <div class="row clearfix" style="margin-top: 10px;">
                            <div class="col-md-12 column"  style="margin-top: 20px">
                                <table width="960px" height="60px">
                                    <tr>
                                        <td  width="120px">卡/账户</td>
                                        <td  width="120px">地区</td>
                                        <td  width="120px">介质类型</td>
                                        <td  width="120px">别名&nbsp;币种</td>
                                        <td  width="120px">余额</td>
                                        <td  width="120px">可用余额</td>
                                        <td  width="120px" >操作</td>
                                    </tr>
                                    <tr>
                                        <td>${card.userCardId}</td>
                                        <td>${card.userCardSubbranch}</td>
                                        <td>e时代卡</td>
                                        <td>人民币</td>
                                        <td>${card.userCardAmount}</td>
                                        <td>${card.userCardAmount}</td>
                                        <td><button style="color: red;">更多</button> <button style="color: red;">更多</button></td>
                                    </tr>
                                </table>
                            </div>
                            </div>
                            </c:if>
                            </c:forEach>



                        <div class="row clearfix" style="margin-top: 30px;">
                            <div class="col-md-12 column">
                                <ul class="breadcrumb">
                                    <li>
                                        <span class="glyphicon glyphicon-folder-open"></span> &nbsp;未注册电子银行卡片
                                    </li>
                                </ul>
                            </div>
                        </div>

<c:forEach items="${cards}" var="card">
    <c:if test="${card.userCardStatus==0}">
                        <div class="row clearfix" style="margin-top: 30px;">
                            <div class="col-md-12 column">
                                <table width="1200px" height="80px">
                                    <tr>
                                        <td width="200px">卡/账户</td>
                                        <td width="200px">地区</td>
                                        <td width="200px">币种</td>
                                        <td width="200px">余额</td>
                                        <td width="200px">可用余额</td>
                                        <td width="200px">操作</td>
                                    </tr>
                                    <tr>
                                        <td>${card.userCardId}</td>
                                        <td>${card.userCardSubbranch}</td>
                                        <td>人民币</td>
                                        <td>${card.userCardAmount}</td>
                                        <td>${card.userCardAmount}</td>
                                        <td><button>注册</button> </td>
                                    </tr>
                                </table>

                            </div>
                        </div>
    </c:if>
</c:forEach>
                        <div style="float:right; margin-top: 40px ;margin-right: 60px">人民币存款累计：${allAmount}</div>



                    </div>








                    <div class="tab-pane" id="panel-03">
                        <!-- <p>
                                                没负债！
                        </p> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>


<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
