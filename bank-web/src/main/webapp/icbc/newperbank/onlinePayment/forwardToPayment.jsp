<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>工银e缴费</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/icbc/newperbank/layui/css/layui.css" media="all">
    <style>
        body {
            margin: 10px;
        }

        .demo-carousel {
            height: 200px;
            line-height: 200px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="layui-col-md12 layui-col-sm12" style="background-color: rgb(188,0,33);height: 20px">
    <div style="float: right;color: white">欢迎您使用工银e缴费 &nbsp;&nbsp;登录&nbsp;&nbsp;注册&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
</div>
<div class="layui-col-md12 layui-col-sm12" style="background-color: rgb(238,238,238);height: 80px">
    <div style="margin-left: 100px"><img src="http://120.79.90.102:81/images/icbcicon.bmp"></div>
</div>
<div class="layui-table-body layui-col-md4 layui-col-sm4" style="margin-top: 10px;padding-left: 120px;height: 750px">
    <ul class="layui-nav layui-nav-tree layui-bg-blue" style="margin-left: 20px;">
        <li class="layui-nav-item"><a href="">首页</a></li>
        <li class="layui-nav-item"><a href="">我的缴费</a></li>
        <li class="layui-nav-item"><a href="">查询明细</a></li>
    </ul>
    <ul class="layui-nav" style="background-color: white;">
        <li class="layui-nav-item" style="background-color: rgb(30,159,255);width: 200px;">
            <a href="javascript:;">缴费设置</a>
            <dl class="layui-nav-child">
                <dd><a href="">设置常用缴费</a></dd>
                <dd><a href="">设置账单提醒</a></dd>
                <dd><a href="">设置委托代扣</a></dd>
                <dd><a href="">设置小额免密</a></dd>
                <dd><a href="">设置预约充值</a></dd>
            </dl>
        </li>
    </ul>
    <div style="width: 200px;height: 200px;background-color: rgb(30,159,255);margin-top: 20px;margin-left: 20px" align="middle">
        <h3 style="padding-top: 10px">常见问题</h3>
        <ul style="margin-top: 10px;font-size: 6px">
            <li>缴费项目支付验签后，报错解决办法</li>
            <li>PC版缴费大厅进行缴费支持移动端吗</li>
            <li>为什么缴费成功后在缴费大厅查询不到缴费记录</li>
            <li>如何在缴费大厅账单缴费成功后在PC端查询</li>
            <li>在缴费大厅是否可以帮别人代缴和领取发票</li>
        </ul>
    </div>
</div>

<div class="layui-col-md8 layui-col-sm8" style="margin-top: 10px;padding-right: 150px">
    <div class="layui-carousel" id="test1">
        <div carousel-item>
            <div><img src="http://120.79.90.102:81/images/lunbo1.png" alt="轮播图1"></div>
            <div><img src="http://120.79.90.102:81/images/lunbo2.png" alt="轮播图2"></div>
            <div><img src="http://120.79.90.102:81/images/lunbo3.png" alt="轮播图3"></div>
        </div>
    </div>
    <div class="layui-carousel" id="test2" style="margin-top: 20px;">
        <div carousel-item>
            <div style=" background-color: rgb(242,242,242)">
                <div style="margin: 20px;float: left"><a href=""><img src="http://120.79.90.102:81/images/xiaolb1.png"></a></div>
                <div style="padding-top: 20px;float: left"><a href=""><img src="http://120.79.90.102:81/images/xiaolb2.png"></a></div>
            </div>
            <div style=" background-color: rgb(242,242,242)">
                <div style="margin: 20px;float: left"><a href=""><img src="http://120.79.90.102:81/images/xiaolb3.png"></a></div>
                <div style="padding-top: 20px;float: left"><a href=""><img src="http://120.79.90.102:81/images/xiaolb4.png"></a></div>
            </div>
            <div style=" background-color: rgb(242,242,242)">
                <div style="margin: 20px;float: left"><a href=""><img src="http://120.79.90.102:81/images/xiaolb5.png"></a></div>
                <div style="padding-top: 20px;float: left"><a href=""><img src="http://120.79.90.102:81/images/xiaolb6.png"></a></div>
            </div>
        </div>
    </div>

    <div class="layui-tab layui-tab-brief" lay-filter="demo">
        <ul class="layui-tab-title">
            <li class="layui-this">全部</li>
            <li>生活缴费</li>
            <li>交通缴费</li>
            <li>教育医疗</li>
            <li>行政缴费</li>
            <li>娱乐休闲</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <table style="width: 100%">
                    <tr align="center">
                        <td><a href=""><img src="http://120.79.90.102:81/images/1101.png"></a><p>手机费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1102.png"></a><p>固话费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1201.png"></a><p>学杂费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1401.png"></a><p>水费</p></td>
                    </tr>
                    <tr align="center">
                        <td><a href=""><img src="http://120.79.90.102:81/images/1402.png"></a><p>电费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1403.png"></a><p>燃气费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1601.png"></a><p>交通罚款</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1001.png"></a><p>电视费</p></td>
                    </tr>
                    <tr align="center">
                        <td><a href=""><img src="http://120.79.90.102:81/images/1000.png"></a><p>宽带费</p></td>
                    </tr>
                </table>
            </div>
            <div class="layui-tab-item">
                <table style="width: 100%">
                    <tr align="center">
                        <td><a href=""><img src="http://120.79.90.102:81/images/1101.png"></a><p>手机费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1102.png"></a><p>固话费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1104.png"></a><p>学杂费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1401.png"></a><p>综合通讯费</p></td>
                    </tr>
                    <tr align="center">
                        <td><a href=""><img src="http://120.79.90.102:81/images/1402.png"></a><p>电费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1403.png"></a><p>燃气费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1801.png"></a><p>物业费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/2000.png"></a><p>供暖费</p></td>
                    </tr>
                    <tr align="center">
                        <td><a href=""><img src="http://120.79.90.102:81/images/1001.png"></a><p>电视费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1000.png"></a><p>宽带费</p></td>
                    </tr>
                </table>
            </div>
            <div class="layui-tab-item">
                <table style="width: 100%">
                    <tr align="center">
                        <td><a href=""><img src="http://120.79.90.102:81/images/1601.png"></a><p>交通罚款</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/3000.png"></a><p>ETC充值</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/3001.png"></a><p>公交卡充值</p></td>
                        <td width="25%"></td>
                    </tr>
                </table>
            </div>
            <div class="layui-tab-item">
                <table style="width: 100%">
                    <tr align="center">
                        <td><a href=""><img src="http://120.79.90.102:81/images/1201.png"></a><p>学杂费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1203.png"></a><p>考试报名费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1202.png"></a><p>校园卡充值</p></td>
                        <td width="25%"></td>
                    </tr>
                </table>
            </div>
            <div class="layui-tab-item">
                <table style="width: 100%">
                    <tr align="center">
                        <td><a href=""><img src="http://120.79.90.102:81/images/1301.png"></a><p>税费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1701.png"></a><p>党费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/4000.png"></a><p>团费</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1703.png"></a><p>工会费</p></td>
                    </tr>
                </table>
            </div>
            <div class="layui-tab-item">
                <table style="width: 100%">
                    <tr align="center">
                        <td><a href=""><img src="http://120.79.90.102:81/images/1802.png"></a><p>游戏充值</p></td>
                        <td><a href=""><img src="http://120.79.90.102:81/images/1807.png"></a><p>会员费</p></td>
                        <td width="25%"></td>
                        <td width="25%"></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="layui-col-md12 layui-col-sm12">
    <!-- 底部固定区域 -->
    <img src="http://120.79.90.102:81/images/footer.bmp">
</div>

<script src="${pageContext.request.contextPath}/icbc/newperbank/layui/layui.js"></script>
<script>

    layui.use(['layer', 'table', 'carousel', 'element'], function () {
        layer = layui.layer //弹层
            , table = layui.table //表格
            , carousel = layui.carousel //轮播
            , element = layui.element; //元素操作


        //监听工具条
        table.on('tool(demo)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'detail') {
                layer.msg('查看操作');
            } else if (layEvent === 'del') {
                layer.confirm('真的删除行么', function (index) {
                    obj.del(); //删除对应行（tr）的DOM结构
                    layer.close(index);
                    //向服务端发送删除指令
                });
            } else if (layEvent === 'edit') {
                layer.msg('编辑操作');
            }
        });

        //执行一个轮播实例
        carousel.render({
            elem: '#test1'
            , width: '100%' //设置容器宽度
            , height: 200
            , arrow: 'none' //不显示箭头
            , anim: 'fade' //切换动画方式
        });

        //执行第二个轮播实例
        carousel.render({
            elem: '#test2'
            , width: '100%' //设置容器宽度
            , height: 100
            , arrow:'always'//始终显示箭头
            , anim: 'default' //切换动画方式
            , indicator:'none'//指示器位置
            , interval:10000 //自动播放的时间，毫秒值
        });

    });
</script>
</body>
</html>        
        