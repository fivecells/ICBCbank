<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><h3>添加用户</h3></div>

    <form class="form-horizontal" id="userAddForm">
        <div class="form-group has-feedback" style="margin-top: 10px">
            <label class="control-label col-sm-4">用户姓名</label>
            <div class="col-sm-5">
                <input type="text" name="userName" id="userName" class="form-control"
                       aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-4">用户密码</label>
            <div class="col-sm-5">
                <input type="password" name="userPwd" id="userPwd" class="form-control"
                       aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-4">确认密码</label>
            <div class="col-sm-5">
                <input type="password" name="rePwd" id="rePwd" class="form-control"
                       aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-4">身份证号</label>
            <div class="col-sm-5">
                <input type="text" name="userIdentity" id="userIdentity" class="form-control"
                       aria-describedby="inputSuccess3Status">

            </div>
        </div>

        <div class="form-group  has-feedback">
            <label class="control-label col-sm-4">使用状态</label>
            <div class="col-sm-5">
                <select class="form-control" name="userStatus" id="userStatus" aria-describedby="inputSuccess3Status">
                    <option value="0">流失用户</option>
                    <option value="1" selected>新用户</option>
                    <option value="2">老用户</option>
                    <option value="3">其他用户</option>
                </select>
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-4">联系电话</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="5" aria-describedby="inputSuccess3Status">
            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-4" for="inputGroupSuccess2">邮箱</label>
            <div class="col-sm-5">
                <div class="input-group">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control" id="inputGroupSuccess2"
                           aria-describedby="inputGroupSuccess2Status">
                </div>
            </div>
        </div>

        <input class="btn btn-default" id="submitButton" type="submit"  value="保存"
               style="margin-bottom: 10px; width: 100px">
        <input class="btn btn-default"  id="resetButton" type="reset" value="重置" style="margin-bottom: 10px; width: 100px">
    </form>
</div>
<script>
    function addUser() {
        // $('#tabContainer').data("tabs").addTab({id: 1, text: '用户列表', closeable: true, url: 'table-list'});
        // window.opener=null;
        // window.open('','_self');
        // window.close();
        // open(location, '_self').close();


    }

    $(function () {

        $('#userAddForm').bootstrapValidator({
            excluded: [':disabled', ':hidden', ':not(:visible)'],
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },

            /**
             * 指定提交的按钮，例如：'.submitBtn' '#submitBtn'
             * 当表单验证不通过时，该按钮为disabled
             */
            submitButtons: 'input[type="submit"]',
            /**
             * submitHandler: function(validator, form, submitButton) {
        *   //validator: 表单验证实例对象
        *   //form  jq对象  指定表单对象
        *   //submitButton  jq对象  指定提交按钮的对象
        * }
             * 在ajax提交表单时很实用
             *   submitHandler: function(validator, form, submitButton) {
                // 实用ajax提交表单
                $.post(form.attr('action'), form.serialize(), function(result) {
                    // .自定义回调逻辑
                }, 'json');
             }
             *
             */
            submitHandler: null,
            fields: {
                userIdentity: {
                    message: '身份证号验证失败',
                    validators: {
                        notEmpty: {
                            message: '身份证号不能为空'
                        },
                        regexp: {
                            regexp: /^\+?[1-9][0-9]*$/,
                            message: '身份证号只能为数字'
                        }
                    }
                },
                userName: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        }
                    }
                },
                userPwd: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        }
                    }
                },
                rePwd: {
                    validators: {
                        //等于密码
                        identical: {
                            field: 'userPwd',
                            message: '两次密码必须相同'
                        },
                        notEmpty: {
                            message: '确认密码不能为空'
                        }
                    }
                }
            }
        });

        $('#submitButton').click(function () {
            $('#userAddForm').bootstrapValidator('validate');
            var flag = $('#userAddForm').data('bootstrapValidator').isValid();
            if(flag){
                $.ajax({
                    url:"${pageContext.request.contextPath}/insertNewUser.do",
                    data:{"userIdentity":$('#userIdentity').val(), "userName":$('#userName').val(),
                        "userStatus":$('#userStatus').val(), "userPwd":$('#userPwd').val()},
                    type: "post",
                    success:function (data) {
                       if(data>0){
                        alert("修改成功");
                        //成功后跳回主页
                           setTimeout("bank.closeTab('5')", 50);
                           setTimeout( "bank.addTab('4', '用户列表', 'table-list')",500);
                           setTimeout( "bank.reload({id:'4', text:'用户列表', url:'table-list', closeable: true})",500);
                       }else{
                           alert("修改失败");
                       }
                    },
                    error:function (data) {
                        alert("修改失败");
                    }
                });


            }
        });

        $('#resetButton').click(function () {
            $('#userAddForm').data('bootstrapValidator').resetForm(true);
        });
    });
</script>