<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>商品详请</title>
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <style type="text/css">
        .title {
            font-size: 20px;
            color: #FF6600;
            font-style: italic;
        }
    </style>
</head>
<body>
<jsp:include page="goods_header.jsp" flush="true" >
    <jsp:param name="image" value="info.jpg" />
</jsp:include>
<hr width="100%"/>
<div class="text3" align="center">${goods.description}</div>
<table width="100%" border="0" align="center">
    <tr>
        <td width="40%" align="right">
            <div><img src="goods_images/${goods.image}" width="360px" height="360px"/></div>
            <br></td>
        <td>
            <div align="center" class="text4">一 口 价：<span class="title">￥${goods.price}元</span></div>
            <br>
            <table width="80%" height="200" border="0">
                <tbody>
                <tr>
                    <td width="25%" class="text5">汽车品牌：</td>
                    <td width="25%" class="text6">${goods.brand}</td>
                    <td width="25%" class="text5">款型：</td>
                    <td width="25%" class="text6">${goods.style}</td>
                </tr>
                <tr>
                    <td class="text5">汽车排量：</td>
                    <td class="text6">${goods.displacement}</td>
                    <td class="text5">型号：</td>
                    <td class="text6">${goods.car_Type}</td>
                </tr>
                <tr>
                    <td class="text5">里程：</td>
                    <td class="text6">${goods.mileage}</td>
                    <td class="text5">&nbsp;</td>
                    <td class="text6">&nbsp;</td>
                </tr>
                </tbody>
            </table>
            <br>
            <br>
            <div><a href="controller?action=add&pagename=detail&id=${goods.id}&name=${goods.name}&price=${goods.price}"><img src="images/button.jpg"/></a></div>
        </td>
    </tr>
</table>
<%@include file="footer.jsp" %>
</body>
</html>
