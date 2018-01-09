<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><h3>添加用户</h3></div>

    <form class="form-horizontal">
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >用户姓名</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >用户密码</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >确认密码</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >身份证号</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status">

            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >使用状态</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="inputSuccess4" aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" >联系电话</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="5" aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group has-success has-feedback">
            <label class="control-label col-sm-3" for="inputGroupSuccess2">邮箱</label>
            <div class="col-sm-5">
                <div class="input-group">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control" id="inputGroupSuccess2" aria-describedby="inputGroupSuccess2Status">
                </div>
            </div>
        </div>

        <input class="btn btn-default" type="button" onclick="addUser()" value="保存">
        <input class="btn btn-default" type="reset" value="重置">
    </form>
</div>
<script>
function addUser(){
    $('#tabContainer').data("tabs").addTab({id: 1, text: '用户列表', closeable: true, url: 'table-list'});
    debugger;
    // window.opener=null;
    // window.open('','_self');
    // window.close();
    // open(location, '_self').close();
}
</script>