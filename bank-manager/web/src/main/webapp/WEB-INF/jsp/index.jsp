<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/6
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>moneybank-index</title>
    <link href="js/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="js/bootstrap-table/dist/bootstrap-table.css">
    <link rel="stylesheet" href="js/bootstrap-tab/sample/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="js/bootstrap-tab/css/bootstrap-tab.css">
</head>
<body>
<div class="container">
<div class="row">
    <div class="col-md-12 col-xs-12" align="center">
        <div><h2>MoneyBank后台管理平台</h2></div>
        <div style="float: right"><a href="javascript:void(0);" onclick="Signout();">退出登陆</a></div>
    </div>
    <div class="col-md-3 col-xs-3">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-3">
                    <div id="treeview5" class=""></div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-9 col-xs-9" align="center">
        <div id="tabContainer"></div>
    </div>
</div>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<script src="js/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script src="js/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<script src="js/bootstrap-tab/js/bootstrap-tab.js"></script>
<script src="js/moment-with-locales.js"></script>
<script type="text/javascript">
    $(function() {
        var defaultData = [
            {
                text: '父节点 1',
                href: '#parent1',
                selectable: false,
                tags: ['4'],
                nodes: [
                    {
                        text: '子节点 1',
                        href: '#child1',
                        selectable: false,
                        tags: ['2'],
                        nodes: [
                            {
                                text: '孙节点 1',
                                href: '#grandchild1',
                                tags: ['0']
                            },
                            {
                                text: '孙节点 2',
                                href: '#grandchild2',
                                tags: ['0']
                            }
                        ]
                    },
                    {
                        text: '子节点 2',
                        href: '#child2',
                        tags: ['0']
                    }
                ]
            },
            {
                text: '展示页面',
                href: '#parent2',
                tags: ['0'],
            },
            {
                text: '新增页面',
                href: '#parent3',
                tags: ['0']
            },
            {
                text: '父节点 4',
                href: '#parent4',
                tags: ['0']
            },
            {
                text: '父节点 5',
                href: '#parent5'  ,
                tags: ['0']
            }
        ];
        var i = 0;
        var k = 0;
        $('#treeview5').treeview({
            color: "#428bca",
            expandIcon: 'glyphicon glyphicon-chevron-right',
            collapseIcon: 'glyphicon glyphicon-chevron-down',
            nodeIcon: 'glyphicon glyphicon-bookmark',
            data: defaultData,
            onNodeSelected: function (event, node) {
                if (node.text=='展示页面'){
                    if(i==0){
                        $('#tabContainer').data("tabs").addTab({id: node.nodeId, text: node.text, closeable: false, url: 'table-list'});
                        i = 1;
                    }else {
                        $('#tabContainer').data("tabs").showTab(node.nodeId);
                    }
                }else if(node.text=='新增页面'){
                    if(k==0){
                        $('#tabContainer').data("tabs").addTab({id: node.nodeId, text: node.text, closeable: false, url: 'table-add'});
                        k = 1;
                    }else {
                        $('#tabContainer').data("tabs").showTab(node.nodeId);
                    }
                }

                else {
                    console.log(node.text);
                }
            }
        })

    });
</script>
<script>

    $("#tabContainer").tabs({
        data: [{
            id: 'home',
            text: '欢迎页面',
            url: "table-welcome",
        }],
    })

</script>


<script type="text/javascript">
    function Signout(){

        var result=confirm("确定要退出吗？");
        if(result){

            location.href="${pageContext.request.contextPath}/signOut";
        }

    }

</script>
</body>
</html>

