<%-- 
    Document   : productDetail
    Created on : Mar 16, 2023, 4:08:07 AM
    Author     : Hades
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Orders</title>
    </head>
    <body>
        <%@ include file="/includes/start.jsp" %>
        <%@ include file="/includes/navbar.jsp" %>
        <div class="container mt-17 mb-5">
            <div>
                <div class="py-3 sub-link d-flex">
                    <a href="#" class="px-2">My Orders</a>
                    &gt;
                </div>
            </div>
            <c:forEach items="${order}" var="listO">
                <div class="cart-border mt-5">
                    <div class="cart-title d-flex text-center justify-content-between p-3">
                        <h5 class="align-self-center">Order: #${listO.order_id}</h5>
                        <span class="bg-pending py-2 px-4 text-white text-capitalize">${listO.order_status}</span>
                    </div>
                    <c:forEach items="${orderDetail}" var="listOD">
                        <c:if test="${listOD.o_id == listO.order_id}">
                            <c:forEach items="${product}" var="listP">
                                <c:if test="${listOD.product_id == listP.productID}">
                                    <div class="cart-items d-flex text-center justify-content-between align-items-center p-3">
                                        <div class="cart-items--img d-flex align-items-center">
                                            <img src="${listP.image}" alt="alt">
                                            <div class="text-start px-3">
                                                <div class="d-flex">
                                                    <span class="text-nowrap">${listP.name}</span>
                                                    <span class="text-nowrap px-3">x ${listOD.quantity}</span>
                                                </div>
                                                <span class="w-20">$ ${listOD.price}</span>
                                            </div>
                                        </div>
                                        <span class="text-danger">Sub total: $ ${listOD.quantity * listOD.price}</span>
                                    </div>
                                </c:if>
                            </c:forEach>
                        </c:if>
                    </c:forEach>

                    <div class="d-flex justify-content-between p-3">
                        <span class="align-self-center text-danger">Total: $ ${listO.total_price}.00</span>
                        <div class="d-flex justify-content-end p-3">
                            <div class="mx-5">
                                <a href="#" class="cart-btn">
                                    <button class="p-2 px-4">Order Tracking</button>
                                </a>
                            </div>
                            <div>
                                <a href="processOrder?oid=${listO.order_id}" class="cart-btn">
                                    <button class="p-2 px-4">Cancel Order</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <%@ include file="/includes/footer.jsp" %>
    <script src="assets/js/script.js"></script>
</body>
</html>
