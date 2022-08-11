<%-- 
    Document   : index
    Created on : Jun 7, 2022, 7:30:18 AM
    Author     : dell
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
        <!--header-->
        <header>
                    <%@include file="header.jsp" %>

            
        </header>
        <div class="line"></div>
        <!--body-->
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
                <c:forEach var="list" items="${listCate}" varStatus="loop">
                    <div class="body-container__right__item">
                        <h1><a href="<c:url value="/home/category.com?type=${categoryList[loop.count-1].categoryName}"/>">${categoryList[loop.count-1].categoryName}</a></h1>                  
                        <div class="body-container__right__list-item">                                                      
                            <c:forEach var="bike" items="${list}" >
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
                </c:forEach>                          
                <!--footer-->
                <button onclick="topFunction()" id="myBtn" title="Go to top">
                    <img src="<c:url value="/images/scroll.png"/>"/>
                </button>
                <footer class="footer-distributed">

                    <div class="footer-right">

                        <a href="#"><i class="fa-brands fa-facebook-square"></i></a>
                        <a href="#"><i class="fa-brands fa-youtube"></i></a>
                        <a href="#"><i class="fa-brands fa-github"></i></a>
                        <a href="#"><i class="fa-brands fa-instagram"></i></a>

                    </div>

                    <div class="footer-left">

                        <p class="footer-links">
                            <a class="link-1" href="<c:url value="/home/index.com"/>">Home</a>
                            <a href="#">Contact</a>
                        </p>

                        <p>감사합니다 PRJ301 &copy; 2022</p>
                    </div>

                </footer>
                </body>
                <script>
                    //Get the button
                    var mybutton = document.getElementById("myBtn");

                    // When the user scrolls down 20px from the top of the document, show the button
                    window.onscroll = function () {
                        scrollFunction()
                    };

                    function scrollFunction() {
                        if (document.body.scrollTop > 400 || document.documentElement.scrollTop > 400) {
                            mybutton.style.display = "block";
                        } else {
                            mybutton.style.display = "none";
                        }
                    }

                    // When the user clicks on the button, scroll to the top of the document
                    function topFunction() {
                        document.body.scrollTop = 0;
                        document.documentElement.scrollTop = 0;
                    }
                </script>
                </html>
