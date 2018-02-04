<%--基金产品选项卡--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="float: left;margin-top: 10px">
    <button type="button" class="btn btn-info" onclick="findOpenFund()">点击查看免费的10条最新基金详细信息</button>
</div>
<table id="fundList"></table>
<script>
    $('#fundList').bootstrapTable({
        method:'POST',
        url: '${pageContext.request.contextPath}/fundList',
        sidePagination: 'client',//使用客户端(前端)实现分页功能
        search:true,        //启用搜索框
        searchAlign:'right', //指定搜索框位置
        pagination: true,   //开启分页功能，下面会显示页面控件
        clickToSelect: true,    //是否启用点击选中行
        height: 840,      //行高，如果没有设置height属性，表格自动根据记录条数调整表格高度,该设置可使分页按钮固定在最上面
        striped: true,      //隔行换色
        showColumns:true,   //是否显示内容列下拉框
        columns: [
            {field: 'fundCode', title: '代码', height: 20, align: 'left'},
            {field: 'fundName', title: '名称'},
            {field: 'currencyType', title: '币种',formatter:function (v,r,i) {
                switch (v){
                    case 1:
                        return '人民币';
                        break;
                    default:
                        return '美元';
                        break;
                }
            }},
            {field: 'fundType', title: '产品种类',formatter:function (v,r,i) {
                switch (v){
                    case 1:
                        return '开放式基金';
                        break;
                    default:
                        return '内部基金';
                        break;
                }
            }},
            {field: 'fundStyle', title: '产品类型',formatter:function (v,r,i) {
                switch (v){
                    case 1:
                        return '混合型';
                        break;
                    default:
                        return '债券型';
                        break;
                }
            }},
            {field: 'issueDate', title: '发行日期'},
            {field: 'unitPrice', title: '发行价'},
            {field: 'buy', title: '操作'},
            {field: 'watch', title: '关注'}
        ]
    });
</script>
<script>
    function findOpenFund() {
        location.href = '${pageContext.request.contextPath}/findOpenFund';
    }
</script>
