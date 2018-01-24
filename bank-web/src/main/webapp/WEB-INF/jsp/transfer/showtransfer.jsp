<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>
<body>

<div class="layui-container" style="background-color: white">
    <%--头部步骤栏--%>
    <div class="layui-row">
        <div class=" layui-col-md10">
            <img src="${pageContext.request.contextPath}/images/transfer/house.png">
            汇款>转账汇款>境内汇款
        </div>
        <div class="layui-col-md２">
            最近使用：<font color="blue">我的网银</font>
        </div>
    </div>
    <%--选项卡--%>
    <div class="layui-tab layui-row">
        <div class="layui-col-md8 layui-col-md-offset2">
            <ul class="layui-tab-title">
                <li class="layui-this">境内汇款</li>
                <li>跨境汇款</li>
                <li>交易明细</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                    <ul class="layui-tab-title">
                        <li class="layui-this">单笔汇款</li>
                        <li>注册帐号转账</li>
                        <li>批量汇款</li>
                    </ul>
                    <div class="layui-tab-content">
                        <div class="layui-tab-item layui-show">
                            <form id="transfer" class="layui-form" action="${pageContext.request.contextPath}/transfer">
                                <div class="layui-form-item">
                                    <label class="layui-form-label">收款姓名：</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="acceptName" required lay-verify="required"
                                               placeholder="请输入标题"
                                               autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">收款卡号：</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="acceptAccount" required lay-verify="required"
                                               placeholder="请输入卡号"
                                               autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">收款银行：</label>
                                    <div class="layui-input-block">
                                        <select name="acceptBank" lay-verify="required">
                                            <option value="">请选择</option>
                                            <option value="0">工商银行</option>
                                            <option value="1">建设银行</option>
                                            <option value="2">商业银行</option>
                                            <option value="3">农业银行</option>
                                            <option value="4">杭州银行</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">币种：</label>
                                    <div class="layui-input-block">
                                        <select name="city" lay-verify="required">
                                            <option value="0">人民币</option>
                                            <option value="1">美元</option>
                                            <option value="2">欧元</option>
                                            <option value="3">英镑</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">汇款金额：</label>
                                    <div class="layui-input-block">
                                        <input type="text" name="money" required lay-verify="required"
                                               placeholder="请输入金额"
                                               autocomplete="off" class="layui-input">
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">汇款时间：</label>
                                    <div class="layui-input-block">
                                        <select name="city" lay-verify="required">
                                            <option value="1">实时汇款</option>
                                            <option value="2">普通汇款</option>
                                            <option value="3">次日汇款</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <label class="layui-form-label">付款卡号：</label>
                                    <div class="layui-input-block">
                                        <select name="payAccount" lay-verify="required">
                                            <c:forEach items="${payList}" var="cardnum">
                                            <option value="1">${cardnum}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-input-block">
                                        <button class="layui-btn" lay-submit lay-filter="formDemo">确定汇款</button>
                                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="layui-tab-item">内容2</div>
                        <div class="layui-tab-item">内容3</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script>
    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });
    layui.use('form', function () {
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function (data) {
            layer.msg(JSON.stringify(data.field));
            return true;
        });
    });
</script>
<script>
    $(function(){
        alert("aaa");
        $.ajax({
            url: "${pageContext.request.contextPath}/getPayAccount",
            data: {"userId":${user.userId}},
            type: 'get',
            success:function(data){

            }
        });
    });
</script>
</body>
</html>
