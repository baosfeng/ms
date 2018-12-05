<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户添加</title>
</head>
<style>
    .error {
        color: #ff0000;
    }
    .success {
        color: #00ff00;
    }
    form {
        width: 50%;
        margin: 0 auto;
    }
</style>
<link rel = "stylesheet" href = "css/bootstrap.min.css"/>
<body>
<form action="${pageContext.request.contextPath}/user/addUser" method="post" class="form-horizontal" role="form">
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">用户姓名</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="name" placeholder="请输入用户名" name="name">
        </div>
    </div>
    <div class="form-group">
        <label for="userName" class="col-sm-2 control-label">用户账号</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="userName" name="userName" placeholder="请输入账号">
            <span class="error" hidden="hidden">账号已存在</span>
            <span class="success" hidden="hidden">账号可用</span>
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">用户密码</label>
        <div class="col-sm-10">
            <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码"/>
        </div>
    </div>
    <div class="form-group">
        <label for="new-password" class="col-sm-2 control-label">请再次输入密码:</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="new-password" placeholder="请再次输入密码">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">用户性别:</label>
        <div class="col-sm-10">
            <input type="radio" name="sex" value="1"/>男
            <input type="radio" name="sex" value="2"/>女
        </div>
    </div>
    <div class="form-group">
        <label for="age" class="col-sm-2 control-label">用户年龄:</label>
        <div class="col-sm-10">
            <input type="number" class="form-control" id="age" min="0" max="100">
        </div>
    </div>
    <div class="form-group">
        <label for="address" class="col-sm-2 control-label">用户地址:</label>
        <div class="col-sm-10">
            <input type="text" name="address" class="form-control" id="address"/>
        </div>
    </div>
    <div class="form-group">
        <label for="email" class="col-sm-2 control-label">用户邮箱:</label>
        <div class="col-sm-10">
            <input type="email" name="address" class="form-control" id="email"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default" onclick="submit(this)" disabled="disabled">提交</button>
        </div>
    </div>
</form>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript">
    function submit(obj) {
        obj.parent.submit();
    }

    $(function () {
        $("input[name='userName']").on("blur", function () {
            let userName = $(this).val();
            $.post("${pageContext.request.contextPath}/user/checkUserName", {"userName": userName},
                function (result) {
                    $("button[type='submit']").prop("disabled", result);
                    result ? showAndHide($(".error"),"class") :showAndHide($(".success"),"class");
                }, "json");
        })
    });
    function showAndHide(obj,attr){
        $(obj).show().siblings("span["+attr+"]").hide();
    }
</script>
</html>