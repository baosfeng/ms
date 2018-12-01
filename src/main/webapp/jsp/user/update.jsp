<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>更新用户信息</title>
</head>
<body>
<form action="user/updateUser" method="post">
    <input name="id" value="${user.id }" type="hidden"/>
    用户姓名:<input name="name" value="${user.name }"></br>
    用户账号:<input name="userName" value="${user.userName }"></br>
    用户密码:<input name="password" value="${user.password }"></br>
    用户性别:<input name="sex" value="${user.sex }"></br>
    用户年龄:<input name="age" value="${user.age }"></br>
    用户的地址:<input name="address" value="${user.address}"></br>
    用户的邮箱:<input name="email" value="${user.email }"></br>
    <input type="button" value="提交" onclick="submit(this)">
</form>
</body>
<script type="text/javascript">
    function submit(obj) {
        obj.parent.submit();
    }
</script>
</html>