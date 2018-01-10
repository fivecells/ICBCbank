<%--
  Created by IntelliJ IDEA.
  User: mky
  Date: 2018/1/9
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading"><h3>修改用户</h3></div>

    <form class="form-horizontal" id="userUpdateForm">
        <div class="form-group has-feedback" style="margin-top: 10px">
            <label class="control-label col-sm-4">用户姓名</label>
            <div class="col-sm-5">
                <input type="text" name="userName" id="userName" class="form-control"
                       aria-describedby="inputSuccess3Status" readonly>
            </div>


        </div>
        <%-- <div class="form-group  has-feedback">
             <label class="control-label col-sm-4" >用户密码</label>
             <div class="col-sm-5">
                 <input type="text" name="userPwd" id="userPwd" class="form-control"  aria-describedby="inputSuccess3Status">
             </div>
         </div>--%>

        <div class="form-group  has-feedback">
            <label class="control-label col-sm-4">身份证号</label>
            <div class="col-sm-5">
                <input type="text" name="userIdentity" id="userIdentity" class="form-control"
                       aria-describedby="inputSuccess3Status"/>

            </div>
        </div>
        <div class="form-group  has-feedback">
            <label class="control-label col-sm-4">使用状态</label>
            <div class="col-sm-5">
                <select class="form-control" name="userStatus" id="userStatus" aria-describedby="inputSuccess3Status">
                    <option value="0">流失用户</option>
                    <option value="1">个人用户</option>
                    <option value="2">企业用户</option>

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

        <input class="btn btn-default" type="submit" onclick="updateUser()" value="保存"
               style="margin-bottom: 10px; width: 100px">
        <input class="btn btn-default" type="reset" value="返回未修改状态" style="margin-bottom: 10px; width: 120px">

    </form>
</div>

<script>
    //    回显数据
    $(function () {
        $.get(
            "userinfo-get",
            {userId: $('#tabContainer').data("tabs").getCurrentTabId()},
            function (data) {
                $('#userName').attr("value", data.userName);
                $('#userIdentity').attr("value", data.userIdentity);
                $("#userStatus").find("option[value='" + data.userStatus + "']").attr("selected", true);
            }
        );
    });

    function updateUser() {


    }
$(function () {
    $('#userUpdateForm').bootstrapValidator({

        excluded: [':disabled', ':hidden', ':not(:visible)'],

        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },

        live: 'enabled',

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
        fields:{
            userIdentity:{
                message: '身份证号验证失败',
                validators:{
                    notEmpty: {
                        message:'身份证号不能为空'
                    },
                    regexp: {
                        regexp: /^\+?[1-9][0-9]*$/,
                        message: '身份证号只能为数字'
                    }
                }

            }

        }
    });
});


</script>

