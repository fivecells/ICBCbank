<%--
  Created by IntelliJ IDEA.
  User: mky
  Date: 2018/1/23
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyAccount</title>
    <link href="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-tab.css">
    <style>
        .col-md-12 {
            margin-top: 10px;
        }

        #editor-render-0 {
            width: 370px;
            height: 220px;
            margin: 8px auto;
        }

        #editor-render-1 {
            width: 370px;
            height: 220px;
            margin: 8px auto;
        }

        #editor-render-2 {
            width: 1000px;
            height: 350px;
            margin: 50px auto;
        }

        #fav .col-md-3 {
            padding: 0px;
        }
    </style>
</head>
<body style="background-color: rgb(242, 242, 242);">

<div class="container">
    <%--我的网银--%>
    <div class="row">
        <div class="col-md-12" style="font-size: 20px">
            <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
            我的网银
            <div style="float: right; font-size: 70%; position: absolute; right: 0px; bottom: 0px;">
                最近使用: <a href="#">卡列表</a> | <a href="#">我的网银</a>
            </div>
        </div>
    </div>

    <div class="row" style="background-color: white">
        <div class="container" style="margin-top: 10px">
            <div class="col-md-5">
                <div class="col-md-4"><img src="${pageContext.request.contextPath}/images/touxiang.png" alt="头像"
                                           class="img-circle" style="height: 95px"></div>
                <div class="col-md-8">
                    <p>
                        等级:
                        <span class="glyphicon glyphicon-star" aria-hidden="true" style="color: #FF6A6A;"></span>
                        <span class="glyphicon glyphicon-star" aria-hidden="true" style="color: #FF6A6A;"></span>
                        <span class="glyphicon glyphicon-star" aria-hidden="true" style="color: #FF6A6A;"></span>
                        <span class="glyphicon glyphicon-star" aria-hidden="true" style="color: #FF6A6A;"></span>
                        <span class="glyphicon glyphicon-star-empty" aria-hidden="true" style="color: #616161;"></span>
                        <span class="glyphicon glyphicon-star-empty" aria-hidden="true" style="color: #616161;"></span>
                        <span class="glyphicon glyphicon-star-empty" aria-hidden="true" style="color: #616161;"></span>
                    </p>
                    <p style="line-height: 35px">
                        标签:
                        <span class="label label-info">星级用户</span>
                        <span class="label label-info">社交新人</span>
                        <span class="label label-info">客户行龄9年</span>
                        <span class="label label-info">青年</span>
                        <span class="label label-info">财付通用户</span>
                    </p>
                </div>
            </div>
            <div class="col-md-4">
                <p>预留验证信息: java</p>
                <p>${lastAccess }</p>
            </div>
            <div class="col-md-3">
                <p><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 我的积分: 998</p>
                <p><span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span> <a href="#"> 我的信用报告</a></p>
                <p><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"> </span> 购物车: 0 </p>
                <p><span class="glyphicon glyphicon-gift" aria-hidden="true"> </span> 优惠券: 0 </p>
            </div>
        </div>
    </div>


    <%--我的卡包--%>
    <div class="row">
        <div class="col-md-12" style="font-size: 20px">
            <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
            我的卡包
            <div style="float: right; font-size: 70%; position: absolute; right: 0px; bottom: 0px;">
                您共有 <span style="color: red">1</span> 张银行卡
            </div>
        </div>
    </div>
    <div class="row" style="background-color: white">
        <div class="container" style="margin-top: 10px">
            <div class="col-md-4">
                <div class="container" style="width: 100%; text-align: center">
                    <img src="${pageContext.request.contextPath}/images/bankcard.png" alt="银行卡" class="img-rounded"
                         style="width:100%;">
                    <div style="font-size: 20px; margin: 3px">
                        尾号:
                        <fmt:formatNumber type="number" value="${card.userCardId}" pattern="0000" maxFractionDigits="2"/>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="container" style="width: 100%">
                    <img src="${pageContext.request.contextPath}/images/bankcard-add.png" alt="添加银行卡"
                         class="img-rounded" width="100%">
                </div>
            </div>
            <div class="col-md-4">
                <div class="container" style="width: 100%">
                    <img src="${pageContext.request.contextPath}/images/bankcard-add.png" alt="添加银行卡"
                         class="img-rounded" style="width:100%;">
                </div>
            </div>
        </div>
    </div>


    <%--日历--%>
    <div class="row">
        <div class="col-md-12" style="font-size: 20px">
            <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
            金融日历
        </div>
    </div>
    <div class="row" style="background-color: white">
        <div class="container" style="margin-top: 10px">
            <div class="row">
                <div class="col-md-12">
                    <span class="glyphicon glyphicon-equalizer" aria-hidden="true"></span>
                    添加 返回今天
                    <div style="float: right;  right: 0px;">
                        当前日期: <span id="time"></span>
                    </div>
                </div>
            </div>
        </div>
        <img src="${pageContext.request.contextPath}/images/calendar.png" alt="日历"
             style="width: 100%; margin-top: 10px"/>
    </div>


    <%--财务分析--%>
    <div class="row">
        <div class="col-md-12" style="font-size: 20px">
            <span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
            财务分析
        </div>
    </div>
    <div class="row" style="background-color: white">

        <ul class="nav nav-tabs">
            <li role="presentation" class="active">
                <a href="#debt" data-toggle="tab" class="btn btn-info" style="width: 200px" id="debt-tab">资产负债</a>
            </li>
            <li role="presentation">
                <a href="#analysis" data-toggle="tab" id="analysis-tab" class="btn btn-info"
                   style="width: 200px">收支分析</a>
            </li>
            <li role="presentation">
                <a href="#investment" data-toggle="tab" id="investment-tab" class="btn btn-info" style="width: 200px">投资详情</a>
            </li>
            <li role="presentation">
                <a href="#report" data-toggle="tab" id="report-tab" class="btn btn-info" style="width: 200px">月度财富报告</a>
            </li>
        </ul>

        <div class="tab-content">
            <div role="tabpanel" class="tab-pane fade active in" id="debt" aria-labelledby="debt-tab">
                <div class="row">
                    <div class="col-md-2">
                        <div class="container" style="margin-top: 15px">
                            <p style="font-size: 25px">
                                <span class="glyphicon glyphicon-yen" aria-hidden="true" style="color: #f5ba2a;"></span>
                                资产负债 <span class="glyphicon glyphicon-eye-open" aria-hidden="true"
                                           style="font-size: 18px; color: #8b8b8b"></span>
                            </p>
                            <p style="font-size: 17px; color: #8b8b8b; margin-left: 30px">
                                我的资产:<br/>
                                <b style="color: #c31625">
                                    <fmt:formatNumber type="number" value="${card.userCardAmount+1810.1}" pattern="0.00" maxFractionDigits="2"/>
                                </b>
                            </p>
                            <p style="font-size: 17px; color: #8b8b8b; margin-left: 30px">
                                我的负债:<br/>
                                <b style="color: #00848d">0.00</b>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-5" id="editor-render-0" style="margin-top: 20px; margin-left: 40px">
                    </div>
                    <div class="col-md-5" id="editor-render-1" style="margin-top: 20px; margin-left: 0px">
                    </div>
                </div>
                <div class="row">
                    <div class="container" style="margin-top: 15px" id="editor-render-2"></div>
                </div>
            </div>

            <div role="tabpanel" class="tab-pane fade" id="analysis" aria-labelledby="analysis-tab">
                <h1>222222222</h1>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="investment" aria-labelledby="investment-tab">
                <h1>333</h1>
            </div>
            <div role="tabpanel" class="tab-pane fade" id="report" aria-labelledby="report-tab">
                <h1>444</h1>
            </div>
        </div>

        <div class="row" style="background-color: white">
            <div id="tabContainer"></div>
        </div>
        <%--猜你喜欢--%>
        <div class="row">
            <div class="col-md-12" style="font-size: 20px">
                <span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>
                猜你喜欢
            </div>
        </div>
        <div class="row" style="margin-top: 15px; margin-bottom: 50px" id="fav">
            <div class="container" style="background-color: white; ">
                <div class="col-md-3" style="padding: 10px">
                    <div style="background-color: #C6E2FF; ">
                        <div class="row">
                            <div class="col-md-12" style="margin-top: 0px">
                                <img src="${pageContext.request.contextPath}/images/fav.png" style="width: 100%"/>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 15px">
                            <div class="col-md-12">
                                <p style="margin-left: 10px; color: red">个人利益60天</p>
                                <p style="margin-left: 10px">预期年化收益率 <span style="color: red">4.50%</span></p>
                                <p style="margin-left: 10px">起购金额 5万</p>
                                <p style="margin-left: 10px; margin-bottom: 35px">理财期限 最短持有60天</p>

                                <div style="position:absolute; right: 20px; bottom: 15px;"><span
                                        class="label label-danger"
                                        style="font-size: 15px">交易</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3" style="padding: 10px">
                    <div style="background-color: #C6E2FF; ">
                        <div class="row">
                            <div class="col-md-12" style="margin-top: 0px">
                                <img src="${pageContext.request.contextPath}/images/fav.png" style="width: 100%"/>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 15px">
                            <div class="col-md-12">
                                <p style="margin-left: 10px; color: red">个人利益60天</p>
                                <p style="margin-left: 10px">预期年化收益率 <span style="color: red">4.50%</span></p>
                                <p style="margin-left: 10px">起购金额 5万</p>
                                <p style="margin-left: 10px; margin-bottom: 35px">理财期限 最短持有60天</p>

                                <div style="position:absolute; right: 20px; bottom: 15px;"><span
                                        class="label label-danger"
                                        style="font-size: 15px">交易</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3" style="padding: 10px">
                    <div style="background-color: #C6E2FF; ">
                        <div class="row">
                            <div class="col-md-12" style="margin-top: 0px">
                                <img src="${pageContext.request.contextPath}/images/fav.png" style="width: 100%"/>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 15px">
                            <div class="col-md-12">
                                <p style="margin-left: 10px; color: red">个人利益60天</p>
                                <p style="margin-left: 10px">预期年化收益率 <span style="color: red">4.50%</span></p>
                                <p style="margin-left: 10px">起购金额 5万</p>
                                <p style="margin-left: 10px; margin-bottom: 35px">理财期限 最短持有60天</p>

                                <div style="position:absolute; right: 20px; bottom: 15px;"><span
                                        class="label label-danger"
                                        style="font-size: 15px">交易</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3" style="padding: 10px">
                    <div style="background-color: #C6E2FF; ">
                        <div class="row">
                            <div class="col-md-12" style="margin-top: 0px">
                                <img src="${pageContext.request.contextPath}/images/fav.png" style="width: 100%"/>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 15px">
                            <div class="col-md-12">
                                <p style="margin-left: 10px; color: red">个人利益60天</p>
                                <p style="margin-left: 10px">预期年化收益率 <span style="color: red">4.50%</span></p>
                                <p style="margin-left: 10px">起购金额 5万</p>
                                <p style="margin-left: 10px; margin-bottom: 35px">理财期限 最短持有60天</p>

                                <div style="position:absolute; right: 20px; bottom: 15px;"><span
                                        class="label label-danger"
                                        style="font-size: 15px">交易</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>


        <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap-table.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap-table-zh-CN.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap-tab.js"></script>
        <script src="${pageContext.request.contextPath}/icbc/newperbank/desktop/js/jquery-1.4.3.min.js?ver=2018012022"></script>
        <script src="${pageContext.request.contextPath}/js/flotr2.js"></script>
<%--三张图表--%>
        <script>
            $(function () {
                //显示日期
                var nowDate = new Date();
                var year = nowDate.getFullYear();
                var month = nowDate.getMonth() + 1;
                month = month > 9 ? month : "0" + month;
                var date = nowDate.getDate();
                date = date > 9 ? date : "0" + date;


                $("#time").text(year + "年" + month + "月" + date + "日");

            });

            //第一个饼图
            $(function () {
                (function basic_pie(container) {

                    var
                        d1 = [[0, ${card.userCardAmount}]],
                        d2 = [[0, 1800.00]],
                        d3 = [[0, 10.10]],
                        graph;

                    graph = Flotr.draw(container, [
                        {
                            data: d1, label: '活期',
                            pie: {
                                explode: 20
                            }
                        },
                        {data: d2, label: '定期'},
                        {data: d3, label: '其他'},
                    ], {
                        title: "资产",
                        fontSize: 7,
                        HtmlText: false,
                        grid: {
                            verticalLines: false,
                            horizontalLines: false,
                            outlineWidth: 0
                        },
                        xaxis: {showLabels: false},
                        yaxis: {showLabels: false},
                        pie: {
                            show: true,
                            explode: 6
                        },
                        mouse: {track: true},
                        legend: {
                            position: 'se',
                            backgroundColor: '#D2E8FF'
                        }
                    });
                })(document.getElementById("editor-render-0"));

            });

            //第二个饼图
            $(function () {
                (function basic_pie(container2) {

                    var
                        d1 = [[0, 1.00]],
                        graph;

                    graph = Flotr.draw(container2, [
                        {
                            data: d1, label: '贷款'
                        },
                    ], {
                        title: "负债",
                        fontSize: 7,
                        HtmlText: false,
                        grid: {
                            verticalLines: false,
                            horizontalLines: false,
                            outlineWidth: 0
                        },
                        xaxis: {showLabels: false},
                        yaxis: {showLabels: false},
                        pie: {
                            show: true,
                            explode: 6
                        },
                        mouse: {track: true},
                        legend: {
                            position: 'se',
                            backgroundColor: '#D2E8FF'
                        }
                    });
                })(document.getElementById("editor-render-1"));
            });


            //折线图

            var dForBasicTime = [];
debugger;
            <c:forEach items="${dateAndBalance}" var="dab" >
            dForBasicTime.push([${dab.key},${dab.value}]);
            </c:forEach>


            (function basic_time(container) {

                var
                    d1 = [],
                    start = new Date("2017/01/01 01:00").getTime(),
                    options,
                    graph,
                    i, x, o;

                /*for (i = 0; i < 100; i++) {
                    x = start + (i * 1000 * 3600 * 24 * 36.5);
                    d1.push([x, i + Math.random() * 30 + Math.sin(i / 20 + Math.random() * 2) * 20 +
                                        Math.sin(i / 10 + Math.random()) * 10]);
                }*/

//                d1.push([new Date("2017/01/01 01:00").getTime(),1500]);
//                d1.push([new Date("2017/02/01 01:00").getTime(),8000]);
//                d1.push([new Date("2017/03/01 01:00").getTime(),3000]);
//                d1.push([new Date("2017/05/01 01:00").getTime(),1505]);
//                d1.push([new Date("2017/08/01 01:00").getTime(),3500]);
//                d1.push([new Date("2018/01/01 01:00").getTime(),1200]);

                options = {
                    xaxis: {
                        mode: 'time',
                        labelsAngle: 45
                    },
                    yaxis: {

                        labelsAngle: 0
                    },
                    selection: {
                        mode: 'x'
                    },
                    HtmlText: false,
                    grid: {
                        verticalLines: true,
                        horizontalLines: true,
                        outlineWidth: 1,
                    },
                    title: '<div style="position: absolute; left: 0px; bottom: 0px; font-size: 15px">人民币(元)</div><p style="margin-top: 25px; font-size: 30px">资产</p>',
                    HtmlText: true,
                };





                // Draw graph with default options, overwriting with passed options
                function drawGraph(opts) {

                    // Clone the options, so the 'options' variable always keeps intact.
                    o = Flotr._.extend(Flotr._.clone(options), opts || {});

                    // Return a new graph.
                    return Flotr.draw(
                        container,
                        [dForBasicTime],
                        o
                    );
                }

                graph = drawGraph();

                Flotr.EventAdapter.observe(container, 'flotr:select', function (area) {
                    // Draw selected area
                    graph = drawGraph({
                        xaxis: {min: area.x1, max: area.x2, mode: 'time', labelsAngle: 45},
                        yaxis: {min: area.y1, max: area.y2}
                    });
                });

                // When graph is clicked, draw the graph with default area.
                Flotr.EventAdapter.observe(container, 'flotr:click', function () {
                    graph = drawGraph();
                });
            })(document.getElementById("editor-render-2"));


        </script>
</body>
</html>
