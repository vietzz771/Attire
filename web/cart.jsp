<%-- 
    Document   : cart
    Created on : Mar 23, 2023, 2:13:48 PM
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
                    Shopping Cart
                </h2>
            </div>
            <div class="row my-5">
                <div class="col-9">
                    <div class="cart-border">
                        <div class="cart-title d-flex text-center justify-content-between p-3">
                            <h5 class="w-20">Product</h5>
                            <h5 class="w-20">Price</h5>
                            <h5 class="w-20 mgl">Quantity</h5>
                            <h5 class="w-20">Subtotal</h5>
                            <h5 class="w-20"> </h5>
                        </div>
                        <c:set var="o" value="${requestScope.cart}"/>
                        <c:forEach items="${o.items}" var="i">
                                <div class="cart-items d-flex text-center justify-content-between align-items-center p-3">
                                    <div class="cart-items--img d-flex align-items-center w-20">
                                        <img src="${i.product.image}" alt="alt"/>
                                        <span class="px-3">${i.product.name}</span>
                                    </div>
                                    <span class="w-20 mx-4">$ ${i.price}</span>
                                    <div class="cart-input d-flex w-20">
                                        <a href="process?num=-1&id=${i.product.productID}">
                                            <button class="btn btn-pd">-</button>
                                        </a>
                                        <input type="number" id="typeNumber" class="form-control" value="${i.quantity}" />
                                        <a href="process?num=1&id=${i.product.productID}">
                                            <button class="btn btn-pd">+</button>
                                        </a>
                                    </div>
                                    <span class="w-20">$ ${i.price*i.quantity}</span>
                                    <form action="process" method="post" class="w-20">
                                        <input type="hidden" name="id" value="${i.product.productID}">
                                        <input class="remove" type="submit" value="X">
                                    </form>
                                    <!--<a href="#" class="w-20 remove">X</a>-->
                                </div>
                        </c:forEach>

<!--                        <div class="cart-items d-flex text-center justify-content-between align-items-center p-3">
                            <div class="cart-items--img d-flex align-items-center w-20">
                                <img src="https://wpbingosite.com/wordpress/flacio/wp-content/uploads/2020/12/15-8-600x713.jpg" alt="alt"/>
                                <span class="px-3">Name</span>
                            </div>
                            <span class="w-20 mx-4">$56</span>
                            <div class="cart-input d-flex w-20">
                                <button class="btn btn-pd">-</button>
                                <input type="number" id="typeNumber" class="form-control" value="1" />
                                <button class="btn btn-pd">+</button>
                            </div>
                            <span class="w-20">$56</span>
                            <a href="#" class="w-20 remove">X</a>
                        </div>-->
                        <div class="d-flex justify-content-between p-3">
                            <div class="coupon">
                                <input placeholder="Coupon Code" class="p-2"/>
                                <a href="#" class="cart-btn">
                                    <button class="p-2 px-4">Apply Coupon</button>
                                </a>
                            </div>
                            <div>
                                <a href="shop" class="cart-btn">
                                    <button class="p-2 px-4">Continue Shopping</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="cart-total">
                        <div class="cart-total--title p-3 text-center">
                            <h5>Cart Totals</h5>
                        </div>
                        <div class="d-flex align-items-center  p-3 ">
                            <h6>Subtotal</h6>
                            <span class="px-4">$ ${o.totalMoney}</span>
                        </div>
                        <div class="d-flex align-items-center  p-3">
                            <h6>Shipping</h6>
                            <span class="px-4">Free</span>
                        </div>
                        <div class="d-flex align-items-center p-3">
                            <h6>Total</h6>
                            <span class="px-4 total-text">$ ${o.totalMoney}</span>
                        </div>
                        <div class="text-center py-4">
                            <a href="checkout" class="cart-btn">
                                <button class="px-4 py-3">PROCEED TO CHECKOUT</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="/includes/footer.jsp" %>
    </body>
</html>
