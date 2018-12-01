<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>更新商家信息</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/shoper/updateShoper" method="post">
    <input name="id" value="${shoper.id }" type="hidden"/>
    商家的姓名:<input name="name" value="${shoper.name }"></br>
    商家的店铺名称:<input name="shopName" value="${shoper.shopName }"></br>
    商家账号:<input name="shopAccount" value="${shoper.shopAccount }"></br>
    商家密码:<input name="password" value="${shoper.password }"></br>
    商家经营范围:<input name="businessScope" value="${shoper.businessScope }"></br>
    <input type="button" value="提交" onclick="submit(this)">
</form>
</body>
<script type="text/javascript">
    function submit(obj) {
        obj.parent.submit();
    }
</script>
</html>