<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="float: left;padding-top: 10px"><button class="btn btn-info" type="submit" onclick="modifyWaiter()">修改</button>&nbsp;</div>
<div style="float: left;padding-top: 10px"><button class="btn btn-success" type="submit" onclick="addWaiter()">新增</button>&nbsp;</div>
<div style="float: left;padding-top: 10px"><button class="btn btn-danger" type="submit" onclick="deleteWaiter()">删除</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div style="float: left;padding-top: 2px" class="navbar-form navbar-left">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="职员姓名" id="searchRealname" name="searchRealname">
        <input type="text" class="form-control" placeholder="身份证号" id="searchIdentity2" name="searchIdentity2">
    </div>
    <button type="submit" class="btn btn-default" onclick="searchWaiter()">查询</button>
</div>
<table id="waiter"></table>

<script>//可以实现页码和分类中的下拉框操作是由于jQuery引入的版本号要兼容
$(function(){

})
$('#waiter').bootstrapTable({
    url: 'waiterInfo-list',
    sidePagination: "server",//指定使用后端实现分页功能
    pagination: true,   //开启分页功能，下面会显示页面控件
    showColumns: true,     //是否显示所有的列，能让表头固定在最上面
    clickToSelect: true,    //是否启用点击选中行
    height: 540,      //行高，如果没有设置height属性，表格自动根据记录条数调整表格高度,该设置可使分页按钮固定在最上面
//  detailView: true,     //是否显示父子表，每行最前面会加一个折叠按钮
    showRefresh: true,     //是否显示刷新按钮
    striped: true,      //隔行换色
    columns: [
        {field: 'cb', checkbox: true},
        {field: 'waiterId', title: '职员ID'},
        {field: 'waiterUsername', title: '职员账号'},
        {field: 'waiterPassword', title: '密码'},
        {field: 'waiterRealname', title: '职员姓名'},
        {field: 'waiterIdentity', title: '身份证号'},
        {field: 'waiterPhone', title: '职员电话'},
        {field: 'waiterStatus', title: '职员状态',formatter:function (v,r,i) {
            switch (v){
                case 0:
                    return '离职';
                    break;
                case  1:
                    return '在职';
                    break;
                case  2:
                    return '请假';
                    break;
                default:
                    return '其他';
                    break;
            }
        }},
        {field: 'waiterEmail', title: '职员邮箱'},
        {field: 'waiterHiredate', title: '入职时间',formatter:function (v,r,i) {
            return moment(v).format('YYYY-MM-DD');
        }},
    ],
});
//增、删、改的触发操作
function deleteWaiter() {
    var aa = $('#waiter').bootstrapTable('getSelections');   //找出被选中的数据行
    if(aa.length>0){
        var isDe = confirm("是否真的要删除此记录");
        if(isDe){
            var arr = [];
            for (var i=0;i<aa.length;i++){
                arr.push(aa[i].waiterId);
            }
            $.post(
                'waiterinfo-delete',
                {'arr[]':arr},
                function(data){
                    if(data>0){
                        alert("删除成功");
                        $('#waiter').bootstrapTable('refresh');  //刷新当前页面
                    }
                },
                'json'
            );
        }
    }else {alert("您未选中任何记录")}
}
function addWaiter() {
       bank.addTab(7,'新增职员','waiter-add');
}

function modifyWaiter() {
    var aa = $('#waiter').bootstrapTable('getSelections');   //找出被选中的数据行
    if(aa.length==1){
        var sid =aa[0].waiterId;
        bank.addTab(sid,'修改职员信息','toModifyWaiter/'+sid);

    }
    if(aa.length<1){alert("您未选中任何记录")}
    if(aa.length>1){alert("您选中了"+aa.length+"条记录，请单条修改")}
}

//模糊查询触发操作
    function searchWaiter() {
        $.post(
            'waiterinfo-search',
            {'waiterRealname': $('#searchRealname').val().trim(), 'waiterIdentity': $('#searchIdentity2').val().trim()},
            function (data) {
                $('#waiter').bootstrapTable('load', data);
            },
            'json'
        )
    }
</script>