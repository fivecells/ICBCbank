<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="float: left;padding-top: 10px">
    <button class="btn btn-info" type="submit" onclick="modifyFn()">修改</button>&nbsp;
</div>
<div style="float: left;padding-top: 10px">
    <button class="btn btn-success" type="submit" onclick="addFn()">新增</button>&nbsp;
</div>
<div style="float: left;padding-top: 10px">
    <button class="btn btn-danger" type="submit" onclick="deleteFn()">删除</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
<div style="float: left;padding-top: 2px" class="navbar-form navbar-left">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="用户姓名" id="searchName" name="searchName">
        <input type="text" class="form-control" placeholder="身份证号" id="searchIdentity" name="searchIdentity">
    </div>
    <button type="submit" class="btn btn-default" onclick="searchForm()">查询</button>
</div>

<table id="table"></table>

<script>//可以实现页码和分类中的下拉框操作是由于jQuery引入的版本号要兼容
$('#table').bootstrapTable({
    url: 'userinfo-list',
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
        {field: 'userId', title: '用户id', height: 20, align: 'left'},
        {field: 'userName', title: '用户姓名'},
        {field: 'userPwd', title: '用户密码'},
        {field: 'userIdentity', title: '身份证号'},
        {field: 'userStatus', title: '用户状态',formatter:function (v,r,i) {
            switch (v){
                case '0':
                    return '流失用户';
                    break;
                case  '1':
                    return '新用户';
                    break;
                case  '2':
                    return '老用户';
                    break;
                default:
                    return '其他用户';
                    break;
            }
        }},
        {
            field: 'userCreated', title: '开户时间', formatter: function (v, r, i) {
            return moment(v).format('YYYY年MM月DD日');
        }
        },
    ],
});

//增、删、改的触发操作
function deleteFn() {
    var aa = $('#table').bootstrapTable('getSelections');   //找出被选中的数据行
    if (aa.length > 0) {
        var isDe = confirm("是否真的要删除此记录");
        if (isDe) {
            var arr = [];
            for (var i = 0; i < aa.length; i++) {
                arr.push(aa[i].userId);
            }
            $.post(
                'userinfo-delete',
                {'arr': arr},
                function (data) {
                    if (data > 0) {
                        alert("删除成功");
                        $('#table').bootstrapTable('refresh');  //刷新当前页面
                    }
                },
                'json'
            );
        }
    } else {
        alert("您未选中任何记录");
    }
}

function addFn() {
    bank.addTab('5','新增用户','table-add');
}

function modifyFn() {
    var aa = $('#table').bootstrapTable('getSelections');   //找出被选中的数据行
    if (aa.length == 1) {
        var userId =aa[0].userId;

        bank.addTab( aa[0].userId,'修改用户','table-user-modify/'+userId);

    }
    if (aa.length < 1) {
        alert("您未选中任何记录")
    }
    if (aa.length > 1) {
        alert("您选中了" + aa.length + "条记录，请单条修改")
    }
}

//模糊查询的触发操作
function searchForm() {
    $.post(
        'userinfo-search',
        {'userName': $('#searchName').val().trim(), 'userIdentity': $('#searchIdentity').val().trim()},
        function (data) {
            $('#table').bootstrapTable('load', data);
        },
        'json'
    )
}

</script>