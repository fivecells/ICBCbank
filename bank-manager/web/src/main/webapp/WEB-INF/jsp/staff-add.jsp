<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><h3>添加职员</h3></div>

    <form class="form-horizontal" id="staffAddForm">

        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >职员姓名</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >密码</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >确认密码</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >身份证号</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  aria-describedby="inputSuccess3Status">

            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >职员状态</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="inputSuccess4" aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" >联系电话</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="phone" aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-3" for="inputGroupSuccess2">邮箱</label>
            <div class="col-sm-5">
                <div class="input-group">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control" id="inputGroupSuccess2" aria-describedby="inputGroupSuccess2Status">
                </div>
            </div>
        </div>

        <input class="btn btn-default" type="button" onclick="saveStaff()" value="保存">
        <input class="btn btn-default" type="reset" value="重置">
    </form>
</div>
<script>
function saveStaff(){

    bank.reload({id:'6',text:'职员列表',closeable:true,url:'staff-list'});
    setTimeout("bank.closeTab('7')",500);
    // window.opener=null;
    // window.open('','_self');
    // window.close();
    // open(location, '_self').close();
}
</script>