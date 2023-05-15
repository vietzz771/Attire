<%-- 
    Document   : navbar
    Created on : Mar 16, 2023, 12:41:20 AM
    Author     : Hades
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav
    class="navbar navbar-expand-lg navbar-light bg-white py-4 fixed-top"
    >
    <div class="container">
        <a
            class="navbar-brand d-flex justify-content-between align-items-center order-lg-0"
            href="/Attire/"
            >
            <img src="assets/images/logo.png" alt="site icon" />
            <span class="text-uppercase fw-lighter ms-2">Eplant</span>
        </a>
        <div class="order-lg-2 nav-btns d-flex">
            <div class="bd-nav mx-2 px-1">
                <c:if test="${sessionScope.account != null}">
                    <div class="position-relative">
                        <button onclick="log()" type="button" class="btn position-relative">
                            <i class="fa fa-user-circle"></i>
                            <div class="tick position-absolute">
                            </div>
                        </button>
                        <div id="log-out" class="log-out position-absolute text-center align-items-center">
                            <h3>Hello ${sessionScope.account.name}</h3>
                            <a href="logout" class="d-flex text-decoration-none ">
                                <i class="fas fa-sign-out-alt mx-2"></i>
                                <span>Log out</span>
                            </a>
                        </div>
                    </div>
                </c:if>
                <c:if test="${sessionScope.account == null}">
                    <a href="login">
                        <button type="button" class="btn position-relative">
                            <i class="fa fa-user-circle"></i>    
                        </button>
                    </a>
                </c:if>
            </div>
            <%--<c:set var="o" value="${requestScope.num}"/>--%>
            <div class="bd-nav mx-2 px-1">
                <a href="cart">
                    <button type="button" class="btn position-relative">
                        <i class="fa fa-shopping-cart"></i>
                        <span
                            class="position-absolute top-0 start-100 translate-middle badge bg-primary"
                            >${n}</span
                        >
                    </button>
                </a>
            </div>
            <!--                    <button type="button" class="btn position-relative">
                                    <i class="fa fa-heart"></i>
                                    <span
                                        class="position-absolute top-0 start-100 translate-middle badge bg-primary"
                                        >2</span
                                    >
                                </button>
                                <button type="button" class="btn position-relative">
                                    <i class="fa fa-search"></i>
                                </button>-->

        </div>
        <button
            class="navbar-toggler border-0"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navMenu"
            >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse order-lg-1" id="navMenu">
            <ul class="navbar-nav mx-auto text-center">
                <li class="nav-item px-2 py-2">
                    <a
                        class="nav-link text-uppercase text-dark"
                        href="/Attire/"
                        >home</a
                    >
                </li>
                <li class="nav-item px-2 py-2">
                    <a
                        class="nav-link text-uppercase text-dark"
                        href="/Attire/#collection"
                        >collection</a
                    >
                </li>
                <li class="nav-item px-2 py-2">
                    <a
                        class="nav-link text-uppercase text-dark"
                        href="shop"
                        >shop</a
                    >
                </li>
                <li class="nav-item px-2 py-2">
                    <a
                        class="nav-link text-uppercase text-dark"
                        href="#footer"
                        >about us</a
                    >
                </li>
            </ul>
        </div>
    </div>
</nav>