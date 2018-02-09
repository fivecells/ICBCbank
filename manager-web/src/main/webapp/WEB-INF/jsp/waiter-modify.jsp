<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><h3>修改职员信息</h3></div>

    <form class="form-horizontal">
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >职员工号</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" value="${waiter.waiterId}" aria-describedby="inputSuccess3Status" name="waiterId" readonly>
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >职员账号</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" value="${waiter.waiterUsername}" aria-describedby="inputSuccess3Status" name="waiterUsername">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >职员密码</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" value="${waiter.waiterPassword}" aria-describedby="inputSuccess3Status" name="waiterPassword">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >职员姓名</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" value="${waiter.waiterRealname}" aria-describedby="inputSuccess3Status" name="waiterRealname">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >身份证号</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status" value="${waiter.waiterIdentity}" name="waiterIdentity">

            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >职员状态</label>
            <div class="col-sm-5">
                <select class="form-control" name="waiterStatus" id="inputSuccess4" aria-describedby="inputSuccess3Status">
                    <c:if test="${waiter.waiterStatus==0}">
                        <option value="0" selected>离职</option>
                        <option value="1">在职</option>
                        <option value="2">请假</option>
                        <option value="3">其他</option>
                    </c:if>
                    <c:if test="${waiter.waiterStatus==1}">
                        <option value="0">离职</option>
                        <option value="1" selected>在职</option>
                        <option value="2">请假</option>
                        <option value="3">其他</option>
                    </c:if>
                    <c:if test="${waiter.waiterStatus==2}">
                        <option value="0">离职</option>
                        <option value="1">在职</option>
                        <option value="2" selected>请假</option>
                        <option value="3">其他</option>
                    </c:if>
                    <c:if test="${waiter.waiterStatus==3}">
                        <option value="0">离职</option>
                        <option value="1">在职</option>
                        <option value="2">请假</option>
                        <option value="3" selected>其他</option>
                    </c:if>
                </select>
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >联系电话</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="5" aria-describedby="inputSuccess3Status" value="${waiter.waiterPhone}" name="waiterPhone">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" for="inputGroupSuccess2">邮箱</label>
            <div class="col-sm-5">
                <div class="input-group">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control" id="inputGroupSuccess2" aria-describedby="inputGroupSuccess2Status" value="${waiter.waiterEmail}" name="waiterEmail">
                </div>
            </div>
        </div>

        <input class="btn btn-default" type="button" value="保存" onclick="waiterModifySave()">
        <input class="btn btn-default" type="reset" value="重置">
    </form>
</div>
<script>
//    点击保存按钮触发事件，保存修改后的信息
    function waiterModifySave(){
        $.post(
            'waiter-modifySave',
            {'waiterId':$('input[name=waiterId]').val(),'waiterUsername':$('input[name=waiterUsername]').val(),
                'waiterPassword':$('input[name=waiterPassword]').val(),'waiterRealname':$('input[name=waiterRealname]').val(),
                'waiterIdentity':$('input[name=waiterIdentity]').val(),'waiterStatus':$('select[name=waiterStatus]').val(),
                'waiterPhone':$('input[name=waiterPhone]').val(),'waiterEmail':$('input[name=waiterEmail]').val()},
            function (data) {
                if(data>0){
                    alert('修改成功！');
                    bank.reload({id:'6',text:'职员列表',closeable:true,url:'waiter-list'});
                    setTimeout("bank.closeTab('${waiter.waiterId}')",500);
                }
            },
            'json'
        );
    }
</script>