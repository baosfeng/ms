<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商品审核状态</title>
</head>
<body>
<form action="product/checkProduct" method="post">
    <input name="id" value="${productDetail.id }" type="hidden">
    <table>
        <tr>
            <td>商品id:</td>
            <td>${productDetail.productId }"</td>
        </tr>
        <tr>
            <td>商家id:</td>
            <td>${productDetail.shoperId }"</td>
        </tr>
        <tr>
            <td>商品标题:</td>
            <td>${productDetail.title }"</td>
        </tr>
        <tr>
            <td>商品图片地址:</td>
            <td>${productDetail.productImage }</td>
        </tr>
        <tr>
            <td>秒杀价格:</td>
            <td>${productDetail.msPrice }</td>
        </tr>
        <tr>
            <td>商品原价:</td>
            <td>${productDetail.oldPrice }</td>
        </tr>
        <tr>
            <td>秒杀开始时间:</td>
            <td>${productDetail.startTime }</td>
        </tr>
        <tr>
            <td>秒杀结束时间:</td>
            <td>${productDetail.endTime }</td>
        </tr>
        <tr>
            <td>秒杀商品数量:</td>
            <td>${productDetail.msProductNum }</td>
        </tr>
        <tr>
            <td>库存:</td>
            <td>${productDetail.stockNum }</td>
        </tr>
        <tr>
            <td>描述:</td>
            <td>${productDetail.description }</td>
        </tr>
        <tr>
            审核通过:<input type="radio" name="state" value="0">
            审核不通过:<input type="radio" name="state" value="1">
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