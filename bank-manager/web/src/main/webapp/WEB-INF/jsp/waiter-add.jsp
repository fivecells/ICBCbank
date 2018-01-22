<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><h3>添加职员</h3></div>

    <form class="form-horizontal" id="waiterAddForm">

        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >职员账号</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status" name="waiterUsername">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >密码</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status" name="waiterPassword">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >确认密码</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >职员姓名</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status" name="waiterRealname">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >身份证号</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status" name="waiterIdentity">

            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >职员状态</label>
            <div class="col-sm-5">
                <select class="form-control" name="waiterStatus" id="inputSuccess4" aria-describedby="inputSuccess3Status">
                    <option value="0">离职</option>
                    <option value="1" selected>在职</option>
                    <option value="2">请假</option>
                    <option value="3">其他</option>
                </select>
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >联系电话</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="phone" aria-describedby="inputSuccess3Status" name="waiterPhone">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >职员入职时间</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status" name="waiterHiredate" placeholder="样式为:  yyyy-MM-dd" id="selectData">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" for="inputGroupSuccess2">邮箱</label>
            <div class="col-sm-5">
                <div class="input-group">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control" id="inputGroupSuccess2" aria-describedby="inputGroupSuccess2Status" name="waiterEmail">
                </div>
            </div>
        </div>

        <input class="btn btn-default" type="button" onclick="waiterAddSave()" value="保存">
        <input class="btn btn-default" type="reset" value="重置">
    </form>
</div>
<script>
//    点击保存按钮触发事件，保存新增用户
function waiterAddSave(){
    $.post(
        'waiter-addSave',
        {'waiterUsername':$('input[name=waiterUsername]').val(),'waiterHiredate':$('input[name=waiterHiredate]').val(),
            'waiterPassword':$('input[name=waiterPassword]').val(),'waiterRealname':$('input[name=waiterRealname]').val(),
            'waiterIdentity':$('input[name=waiterIdentity]').val(),'waiterStatus':$('select[name=waiterStatus]').val(),
            'waiterPhone':$('input[name=waiterPhone]').val(),'waiterEmail':$('input[name=waiterEmail]').val()},
        function (data) {
            if(data>0){
                alert('添加成功！');
                bank.reload({id:'6',text:'职员列表',closeable:true,url:'waiter-list'});
                setTimeout("bank.closeTab('7')",500);
            }
        },
        'json'
    );
}
</script>
<script>
    //入职时间文本框的日历插件
    $.fn.datepicker.dates['cn'] = {   //切换为中文显示
        days: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
        daysShort: ["日", "一", "二", "三", "四", "五", "六", "七"],
        daysMin: ["日", "一", "二", "三", "四", "五", "六", "七"],
        months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
        monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
        today: "今天",
        clear: "清除"
    };

    $('#selectData').datepicker({
        autoclose: true, //自动关闭
        beforeShowDay: $.noop,    //在显示日期之前调用的函数
        calendarWeeks: false,     //是否显示今年是第几周
        clearBtn: false,          //显示清除按钮
        daysOfWeekDisabled: [],   //星期几不可选
        endDate: Infinity,        //日历结束日期
        forceParse: true,         //是否强制转换不符合格式的字符串
        format: 'yyyy-mm-dd',     //日期格式
        keyboardNavigation: true, //是否显示箭头导航
        language: 'cn',           //语言
        minViewMode: 0,
        orientation: "auto",      //方向
        rtl: false,
        startDate: -Infinity,     //日历开始日期
        startView: 0,             //开始显示
        todayBtn: true,          //今天按钮
        todayHighlight: true,    //今天高亮
        weekStart: 0       //星期几是开始
    });
</script>