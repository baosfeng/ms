<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>提交商品秒杀申请</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/product/applyProduct" method="post">
    商品id:<input name="productId"></br>
    商品标题:<input name="title"></br>
    商品图片地址:<input name="productImage"></br>
    商品原价:<input name="oldPrice"></br>
    秒杀价格:<input name="msPrice"></br>
    商家id:<input name="shoperId"></br>
    秒杀开始时间:<input name="startTime"></br>
    秒杀结束时间:<input name="endTime"></br>
    秒杀商品数量:<input name="msProductNum"></br>
    库存:<input name="stockNum"></br>
    描述:<input name="description"></br>
    <input type="button" value="提交" onclick="submit(this)">
</form>
</body>
<script type="text/javascript">
    function submit(obj) {
        obj.parent.submit();
    }
</script>
</html>