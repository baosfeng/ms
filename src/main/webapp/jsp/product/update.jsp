<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/product/updateProduct" method="post">
    <input name="id" value="${msproductinfo.id }" type="hidden">
    商品id:<input name="productId" value="${msproductinfo.productId }"></br>
    商品标题:<input name="title" value="${msproductinfo.title }"></br>
    商品图片地址:<input name="productImage" value="${msproductinfo.productImage }"></br>
    秒杀价格:<input name="msPrice" value="${msproductinfo.msPrice }"></br>
    商品原价:<input name="oldPrice" value="${msproductinfo.oldPrice }"></br>
    秒杀开始时间:<input name="startTime" value="${startTime }"></br>
    秒杀结束时间:<input name="endTime" value="${endTime}"></br>
    秒杀商品数量:<input name="msProductNum" value="${msproductinfo.msProductNum }"></br>
    库存:<input name="stockNum" value="${msproductinfo.stockNum }"></br>
    描述:<input name="description" value="${msproductinfo.description }"></br>
    <input type="button" value="提交" onclick="submit(this)">
</form>
</body>
<script type="text/javascript">
    function submit(obj) {
        obj.parent.submit();
    }
</script>
</html>