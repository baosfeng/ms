<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查看所有用户</title>
</head>
<body>
<h1><a href="${pageContext.request.contextPath}/user/addUser">添加用户</a></h1>
<table border="2">
    <tr>
        <td>编号</td>
        <td>用户姓名</td>
        <td>用户账号</td>
        <td>用户密码</td>
        <td>用户性别</td>
        <td>用户年龄</td>
        <td>用户的地址</td>
        <td>用户的邮箱</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${userList}" var="item" varStatus="status">
        <tr>
            <td>${status.count }</td>
            <td>${item.name }</td>
            <td>${item.userName }</td>
            <td>${item.password }</td>
            <td>${item.sex }</td>
            <td>${item.age }</td>
            <td>${item.address }</td>
            <td>${item.email }</td>
            <td>
                <a href="${pageContext.request.contextPath}/user/update?id=${item.id}">修改</a>||
                <a href="${pageContext.request.contextPath}/user/delUser?id=${item.id}">删除</a>||
                <a href="${pageContext.request.contextPath}/user/queryUserById?id=${item.id}">查看</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>