<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查看所有商家信息</title>
</head>
<body>
<h1><a href="shoper/addShoper">添加商家</a></h1>
<table border="2">
    <tr>
        <td>商家的姓名</td>
        <td>商家的店铺名称</td>
        <td>商家账号</td>
        <td>商家密码</td>
        <td>商家经营范围</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${shoperList}" var="item">
        <tr>
            <td>${item.name }</td>
            <td>${item.shopName }</td>
            <td>${item.shopAccount }</td>
            <td>${item.password }</td>
            <td>${item.businessScope }</td>
            <td><a href="shoper/updateShoper?id=${item.id}">修改</a>||<a href="shoper/delShoper?id=${item.id}">删除</a>||<a href="shoper/queryShoperByIdShoper?id=${item.id}">查看</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>