<%-- 
    Document   : checkout
    Created on : Mar 23, 2023, 10:26:13 PM
    Author     : Hades
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="/includes/start.jsp" %>
        <%@ include file="/includes/navbar.jsp" %>
        <div class="container mt-17">
            <div class="title text-center">
                <h2 class="position-relative d-inline-block">
                    Checkout
                </h2>
            </div>
            <div class="row my-5">
                <div class="col-8">
                    <div>
                        <h3>Billing Details</h3>
                        <div class="group-input py-2 mt-4">
                            <span>Name</span>
                            <input type="text" class="w-100 my-2">
                        </div>
                        <div class="group-input py-2">
                            <span>Street address</span>
                            <input type="text" class="w-100 my-2">
                        </div>
                        <div class="group-input py-2">
                            <span>Phone</span>
                            <input type="text" class="w-100 my-2">
                        </div>
                        <div class="group-input py-2">
                            <span>Email address</span>
                            <input type="text" class="w-100 my-2">
                        </div>
                        <div class="group-input py-2">
                            <span>Order notes (optional)
                            </span>
                            <input type="text" class="w-100 my-2" placeholder="Notes about your order, e.g special notes for delivery">
                        </div>
                    </div>   
                </div>
                <div class="col-4">
                    <div class="checkout-pd p-4">
                        <h3>Product</h3>
                        <c:set var="o" value="${requestScope.cart}"/>
                        <c:forEach items="${o.items}" var="i">
                            <div class="checkout-img d-flex py-2 align-items-center justify-content-between">
                                <div class="d-flex align-items-center"> 
                                    <img src="${i.product.image}" alt="alt"/>
                                    <div class="px-3">
                                        <p>${i.product.name}</p>
                                        <span class="qty">QTY: ${i.quantity}</span>
                                    </div>
                                </div>
                                <span>$ ${i.price*i.quantity}</span>
                            </div>
                        </c:forEach>

<!--                        <div class="checkout-img d-flex py-2 align-items-center justify-content-between">
                            <div class="d-flex align-items-center">
                                <img src="https://wpbingosite.com/wordpress/flacio/wp-content/uploads/2020/12/15-8-600x713.jpg" alt="alt"/>
                                <div class="px-3">
                                    <p>Name</p>
                                    <span class="qty">QTY: 1</span>
                                </div>
                            </div>   
                            <span>$300</span>
                        </div>-->
                        <div class="d-flex py-3 mt-3 checkout-text align-items-center justify-content-between">
                            <h6>Subtotal</h6>
                            <span>$ ${o.totalMoney}</span>
                        </div>
                        <div class="d-flex py-3 checkout-text align-items-center justify-content-between">
                            <h6>Shipping</h6>
                            <span>Free</span>
                        </div>
                        <div class="d-flex py-3 checkout-text align-items-center justify-content-between">
                            <h6>Total</h6>
                            <span class="total-text">$ ${o.totalMoney}</span>
                        </div>
                        <div class="text-center">
                            <a href="shop" class="cart-btn">
                                <button class="p-4 px-5">PLACE ORDER</button>
                            </a>
                        </div>
                    </div>
                </div>   
            </div>
        </div>
        <%@ include file="/includes/footer.jsp" %>
    </body>
</html>
