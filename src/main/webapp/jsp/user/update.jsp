<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>更新用户信息</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/user/updateUser" method="post">
    <input name="id" value="${user.id }" type="hidden"/>
    <table>
        <tr>
            <td>用户姓名:</td>
            <td><input type="text" name="name" value="${user.name}"/></td>
        </tr>
        <tr>
            <td>用户账号:</td>
            <td><input type="text" name="userName" value="${user.userName}" disabled="disabled"/></td>
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
            <td><input type="text" name="age" value="${user.age}"></td>
        </tr>
        <tr>
            <td>用户地址:</td>
            <td><input type="text" name="address" value="${user.address}"/></td>
        </tr>
        <tr>
            <td>用户邮箱:</td>
            <td><input type="email" name="email" value="${user.email}"/></td>
        </tr>
    </table>
    <input type="button" value="提交" onclick="submit(this)">
</form>
</body>
<script type="text/javascript">
    function submit(obj) {
        obj.parent.submit();
    }
</script>
</html>