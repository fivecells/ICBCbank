<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="float: left;padding-top: 10px"><button class="btn btn-info" type="submit" onclick="modifyFn()">修改</button>&nbsp;</div>
<div style="float: left;padding-top: 10px"><button class="btn btn-success" type="submit" onclick="addStaff()">新增</button>&nbsp;</div>
<div style="float: left;padding-top: 10px"><button class="btn btn-danger" type="submit" onclick="deleteFn()">删除</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
<div style="float: left;padding-top: 2px">
    <form class="navbar-form navbar-left" role="search" action="#" method="post">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="身份证号">
        </div>
        <button type="submit" class="btn btn-default">查询</button>
    </form>
</div>
<table id="staff"></table>

<script>//可以实现页码和分类中的下拉框操作是由于jQuery引入的版本号要兼容
$(function(){

})
$('#staff').bootstrapTable({
    url: 'staffInfo-list',
    sidePagination: "server",//指定使用后端实现分页功能
    pagination: true,   //开启分页功能，下面会显示页面控件
    showColumns: true,     //是否显示所有的列，能让表头固定在最上面
    clickToSelect: true,    //是否启用点击选中行
    width: $(window).width(),
    height: 540,      //行高，如果没有设置height属性，表格自动根据记录条数调整表格高度,该设置可使分页按钮固定在最上面
//  detailView: true,     //是否显示父子表，每行最前面会加一个折叠按钮
    showRefresh: true,     //是否显示刷新按钮
    columns: [
        {field: 'cb', checkbox: true},
        {field: 'staffId', title: '员工号', heigh: 20, align: 'left'},
        {field: 'staffName', title: '职员姓名'},
        {field: 'userPwd', title: '密码'},
        {field: 'userIdentity', title: '身份证号'},
        {field: 'userStatus', title: '使用状态'},
        {field: 'userCreated', title: '入职时间',formatter:function (v,r,i) {
            return moment(v).format('L');
        }},
    ],
});
//增、删、改的触发操作
function deleteFn() {
    var aa = $('#staff').bootstrapTable('getSelections');   //找出被选中的数据行
    if(aa.length>0){
        var isDe = confirm("是否真的要删除此记录");
        if(isDe){
            var arr = [];
            for (var i=0;i<aa.length;i++){
                arr.push(aa[i].userId);
            }
            $.post(
                'userinfo-delete',
                {'arr':arr},
                function(data){
                    if(data>0){
                        alert("删除成功");
                        $('#staff').bootstrapTable('refresh');  //刷新当前页面
                    }
                },
                'json'
            );
        }
    }else {alert("您未选中任何记录")}
}
function addStaff() {
       bank.addTab(7,'新增职员','staff-add');
}

function modifyFn() {
    var aa = $('#staff').bootstrapTable('getSelections');   //找出被选中的数据行
    if(aa.length==1){
        var sid =aa[0].staffId;
        bank.addTab(sid,'修改职员信息','toModifyStaff/'+sid);

    }
    if(aa.length<1){alert("您未选中任何记录")}
    if(aa.length>1){alert("您选中了"+aa.length+"条记录，请单条修改")}
}
</script>