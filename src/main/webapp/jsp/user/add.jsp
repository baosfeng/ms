<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户添加</title>
</head>
<body>
<form action="/user/addUser" method="post">
    用户姓名:<input name="name"/></br>
    用户账号:<input name="userName"></br>
    用户密码:<input name="password"></br>
    用户性别:<input name="sex"></br>
    用户年龄:<input name="age"></br>
    用户的地址:<input name="address"></br>
    用户的邮箱:<input name="email"></br>
    <input type="button" value="提交" onclick="submit(this)">
</form>
</body>
<script type="text/javascript">
    function submit(obj) {
        obj.parent.submit();
    }
</script>
</html>