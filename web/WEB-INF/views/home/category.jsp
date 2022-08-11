<%-- 
    Document   : detail
    Created on : Jun 18, 2022, 3:19:58 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/css/index.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/css/detail.css"/>" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="app">
            <!--header-->
                    <%@include file="header.jsp" %>
        </header>    
        <div class="line"></div>
        <div class="body-container">
            <div class="body-container__left">
                <h1>Category</h1>
                <hr style="width: 60%"/>
                <ul>
                    <c:forEach var="categoryList" items="${categoryList}">
                        <li><a href="<c:url value="/home/category.com?type=${categoryList.categoryName}"/>">${categoryList.categoryName}</a></li>
                        </c:forEach>
                </ul>
                <hr>
                <h1>Brand</h1>
                <hr style="width: 60%"/>
                <ul>
                    <c:forEach var="brandList" items="${brandList}">
                        <li><a href="<c:url value="/home/brand.com?brand=${brandList.brandName}"/>">${brandList.brandName}</a></li>
                        </c:forEach>
                </ul>
            </div>
            <div class="body-container__right">
                <!--item-->
                <div class="body-container__right__item">
                    <h1><a href="<c:url value="/home/category.com?type=${type}"/>">${type}</a></h1>
                    <div class="body-container__right__list-item">
                        <c:forEach var="bike" items="${list}">
                            <a href="<c:url value="/home/info.com?id=${bike.productId}"/>">
                                <img src="<c:url value="${bike.image}"/>"/>
                                <div class="body-container__right__item--sale-off">
                                    <span class="body-container__right__item--sale-off__angle"></span>
                                    <span class="body-container__right__item--sale-off__percent">49%</span>
                                    <span class="body-container__right__item--sale-off__lable">Sale</span>
                                </div>
                                <hr/>
                                <div style="height: 110px;">
                                    <h4>${bike.productName}</h4>
                                    <h4>
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${bike.unitPrice}" type="currency"/>
                                    </h4>
                                </div>
                                <div class="body-container__right__add__btn">
                                    <button class="body-container__right__add"  >Add to cart</button>
                                    <button class="body-container__right__buy" >Buy now</button>
                                </div>
                            </a>
                        </c:forEach>                          
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
