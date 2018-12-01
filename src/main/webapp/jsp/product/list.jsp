<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>秒杀商品列表</title>
</head>
<body>
<h1><a href="product/applyProduct">申请秒杀商品</a></h1>
<table border="2">
    <tr>
        <td>商品id</td>
        <td>商品标题</td>
        <td>图片地址</td>
        <td>秒杀价格</td>
        <td>商家id</td>
        <td>秒杀原价</td>
        <td>申请时间</td>
        <td>转态</td>
        <td>秒杀开始时间</td>
        <td>秒杀结束时间</td>
        <td>秒杀商品数</td>
        <td>库存</td>
        <td>商品描述</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${list}" var="item">
        <tr>
            <td>${item.productId }</td>
            <td>${item.title }</td>
            <td>${item.productImage }</td>
            <td>${item.msPrice }</td>
            <td>${item.shoperId }</td>
            <td>${item.oldPrice }</td>
            <td>${item.applydate }</td>
            <td>${item.auditstate }</td>
            <td>${item.starttime }</td>
            <td>${item.endtime }</td>
            <td>${item.msProductNum }</td>
            <td>${item.stockNum }</td>
            <td>${item.description }</td>
            <td>
                <a href="product/updateProduct?id=${item.id}">修改</a>||
                <a href="product/deleteProductById?id=${item.id}">删除</a>||
                <a href="product/queryProductById?id=${item.id}">查看</a>||
                <a href="product/checkProduct?id=${item.id}">审核</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>