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
</style>
<body>
<form action="${pageContext.request.contextPath}/user/addUser" method="post">
    <table>
        <tr>
            <td>用户姓名:</td>
            <td><input type="text" name="name"/></td>
        </tr>
        <tr>
            <td>用户账号:</td>
            <td>
                <input type="text" name="userName"/>
                <span class="error" hidden="hidden">账号已存在</span>
                <span class="success" hidden="hidden">账号可用</span>
            </td>
        </tr>
        <tr>
            <td>用户密码:</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td>用户性别:</td>
            <td>
                <input type="radio" name="sex" value="1"/>男
                <input type="radio" name="sex" value="2"/>女
            </td>
        </tr>
        <tr>
            <td>用户年龄:</td>
            <td><input type="number" name="age" min="0" max="100"/></td>
        </tr>
        <tr>
            <td>用户地址:</td>
            <td><input type="text" name="address"/></td>
        </tr>
        <tr>
            <td>用户邮箱:</td>
            <td><input type="email" name="email"/></td>
        </tr>
    </table>
    <input type="button" value="提交" onclick="submit(this)" disabled="disabled">
</form>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    function submit(obj) {
        obj.parent.submit();
    }

    $(function () {
        $("input[name='userName']").on("blur", function () {
            let userName = $(this).val();
            let that = this;
            $.post("${pageContext.request.contextPath}/user/checkUserName", {"userName": userName},
                function (result) {
                    $("input[type='button']").prop("disabled", result);
                    result ? $(that).next(".error").show().next(".success").hide() : $(that).next(".error").hide().next(".success").show();
                }, "json");
        })
    })
</script>
</html>