<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/31
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script>
        $(function () {
            $('button').css({'border-color':'rgb(255,120,120)','height':'30px'})
        })
    </script>
</head>

<body>
<div class="layui-row">
    <div >
        <img src="${pageContext.request.contextPath}/images/transfer/house.png">
        银行卡·账户>账户服务>明细查询
    </div>
    <div style="float: right">
        最近使用：<font color="blue">我的网银</font>
    </div>
</div>
<div >

    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist" style="border-bottom-color: rgb(227,42,48);border-bottom-width:medium">
        <li role="presentation" style="" class="active"><a href="#home"  style="background-color: rgb(227,42,48);font-weight: normal;color: white" aria-controls="home" role="tab" data-toggle="tab">交易明细</a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content" style="margin:25px;">
        <div role="tabpanel"  class="tab-pane active" id="home">
            <div style="margin:25px;height:100px;border-bottom-color: rgb(227,42,48);border-bottom-width:medium">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">起止日期</label>
                    <div class="col-sm-10">
                        <input type="date"  id="inputEmail3" name="startdate" >——<input type="date" name="enddate" > <button class="btn btn-default" type="button" style="background-color: rgb(255,120,120)">当日</button> <button class="btn btn-default" type="button">近一周</button> <button class="btn btn-default" type="button">近一月</button> <button class="btn btn-default" type="button">近半年</button>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">请选择注册账户</label>
                    <div class="col-sm-10">
                        <select style="width:250px;height:30px">
                            <option>1</option>
                            <option>2</option>

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">业务类型</label>
                    <div class="col-sm-10">
                        <button class="btn btn-default" type="button"style="background-color: rgb(255,120,120)">全部</button> <button class="btn btn-default" type="button">汇款</button> <button class="btn btn-default" type="button">缴费</button> <button class="btn btn-default" type="button">资金存管明细</button>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-2 control-label">资金流向</label>
                    <div class="col-sm-10">
                        <button class="btn btn-default" type="button"style="background-color: rgb(255,120,120)">全部</button> <button class="btn btn-default" type="button">收入</button> <button class="btn btn-default" type="button">支出</button>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-6 col-sm-10">
                        <button class="btn btn-default" type="submit" style="background-color: rgb(255,120,120)" class="btn btn-default">查询</button>
                    </div>
                </div>
            </form>
                <div>
                    <table class="table table-hover">
                        <tr>
                            <td>交易日期</td><td>摘要</td><td>金额</td><td>币种</td><td>余额</td><td>对方信息</td>
                        </tr>
                    </table>
                    <p>特别提示：</p>
                    <p>1、明细不含未达账项，即未包含商户还未上传到我行的脱机交易信息。</p>
                    <p>2、因脱机消费存在延迟入账情况，电子现金应以芯片卡内实际为准。</p>

                </div>
            </div>

        </div>

    </div>

</div>
<script >
    Date.prototype.format = function(fmt) {
        var o = {
            "M+" : this.getMonth()+1,                 //月份
            "d+" : this.getDate(),                    //日
            "h+" : this.getHours(),                   //小时
            "m+" : this.getMinutes(),                 //分
            "s+" : this.getSeconds(),                 //秒
            "q+" : Math.floor((this.getMonth()+3)/3), //季度
            "S"  : this.getMilliseconds()             //毫秒
        };
        if(/(y+)/.test(fmt)) {
            fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
        }
        for(var k in o) {
            if(new RegExp("("+ k +")").test(fmt)){
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
            }
        }
        return fmt;
    }
    $(function () {
        var td = new Date().format("yyyy-MM-dd");
        $('input[type="date"]').val(td);

    })

</script>

</body>
</html>
