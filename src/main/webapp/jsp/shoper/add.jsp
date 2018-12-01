<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商家添加</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/shoper/addShoper" method="post">
    商家的姓名:<input name="name"></br>
    商家的店铺名称:<input name="shopName"></br>
    商家账号:<input name="shopAccount"></br>
    商家密码:<input name="password"></br>
    商家经营范围:<input name="businessScope"></br>
    <input type="button" value="提交" onclick="submit(this)">
</form>
</body>
<script type="text/javascript">
    function submit(obj) {
        obj.parent.submit();
    }
</script>
</html>