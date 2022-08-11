<%-- 
    Document   : cart
    Created on : Jun 18, 2022, 1:24:28 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/css/cart.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/css/index.css"/>" rel="stylesheet" type="text/css"/>
        <title>Xe dap</title>
    </head>
    <style>
        .mess {
            color: red;
            position: relative;
            bottom: -440px;
            left: 32%;
            font-size: 30px;
        }
    </style>
    <body>
        <!--header-->
        <header>
                                <%@include file="header.jsp" %>

        </header>
        <!--body-->
        <div class="cart__body__container">
            <table class="cart__body__container__table">
                <thead>
                    <tr>
                        <th style="text-align: left;">Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${sessionScope.cart}">
                        <tr>
                            <td class="cart__body__container__table__product">
                                <img class="cart__body__container__table__product__img" src="${item.bike.image}"/>
                                <div class="cart__body__container__table__product__prop">
                                    <h4>${item.bike.productName}</h4>
                                    <span>Color: ${item.bike.color}</span>
                                    <span>Size: ${item.bike.size}</span>
                                </div>
                            </td>
                            <td>
                                <fmt:setLocale value="vi_VN"/>
                                <fmt:formatNumber value="${item.bike.unitPrice}" type="currency"/>
                            </td>
                            <td>
                                <span>
                                    ${item.quantity}
                                </span>
                            </td>
                            <td>
                                <span>
                                    <fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${item.bike.unitPrice * item.quantity}" type="currency"/>
                                </span>
                            </td>
                            <td>
                                <a href="./updateCart.com?id=${item.bike.productId}&color=${item.bike.color}&size=${item.bike.size}&quantity=${item.quantity}">Update</a> |
                                <a href="./delete.com?id=${item.bike.productId}&color=${item.bike.color}&size=${item.bike.size}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
                <span class="mess">${mess}</span>
            </table>
            <div class="cart__body__container__total-and-pay">

                <span class="total">Total: 
                    <fmt:setLocale value="vi_VN"/>
                    <fmt:formatNumber value="${sessionScope.total}" type="currency"/>
                </span>

                <form action="./clear.com">
                    <button value="clear" name="op">Clear cart</button>
                    <button value="buyAll" name="op">Pay all</button>
                </form>
            </div>
        </div>
    </body>
    <script>
    </script>
</html>
