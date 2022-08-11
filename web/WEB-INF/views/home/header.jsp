<%-- 
    Document   : header
    Created on : Jul 20, 2022, 2:46:38 PM
    Author     : nk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/css/index.css"/>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <div class="header__top">
                <h4>
                    <i class="fa-solid fa-envelope"></i> GmailCuaNhomMinh@gmail.com
                </h4>
                <h4>
                    <i class="fa-solid fa-phone"></i> 0900000009
                </h4>
                <div class="header__user">
                    <c:if test="${sessionScope.acc != null}">
                        <a href="#">Hello ${sessionScope.acc.userName}</a>
                        <a href="<c:url value="/user/logout.com"/>">Logout</a>
                    </c:if>
                    <c:if test="${sessionScope.acc == null}">
                        <a href="<c:url value="/user/login.com"/>">Login</a>
                    </c:if>
                    <a href="<c:url value="/cart/cart.com?total=${total}"/>"><i class="fa-solid fa-cart-shopping"></i></a>
                    <a style="display: ${sessionScope.acc.userName == "administrator"?"block":"none"}" href="<c:url value="/admin/manager.com"/>"><i class="fa-solid fa-user-lock"></i> Admin</a>
                </div>
            </div>
            <div class="header__bottom">
                <div class="header__left">
                    <img class="header__left_img" src="<c:url value="/images/logo.png"/>"/>
                </div>
                <div class="header__right">
                    <ul>
                        <li><a href="<c:url value="/home/index.com"/>">Home</a></li>
                        <li><a href="">Shop</a></li>
                        <li><a href="">Contact</a></li>
                    </ul>
                </div>
            </div>
    </body>
</html>
