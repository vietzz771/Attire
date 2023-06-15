<%-- 
    Document   : productDetail
    Created on : Mar 16, 2023, 4:08:07 AM
    Author     : Hades
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Received</title>
    </head>
    <body>
        <%@ include file="/includes/start.jsp" %>
        <%@ include file="/includes/navbar.jsp" %>
        <div class="container mt-17 mb-5">
            <div class="border-received text-center p-4">
                <h2>Thank you. Your order has been received.</h2>
            </div>
            <div class="text-center mt-4">
                <a href="myOrder" class="text-decoration-none text-dark btn-hover">
                    <button class="btn m-2 text-dark button text-capitalize">
                        Check your orders
                    </button>
                </a>
            </div>
        </div>
        <%@ include file="/includes/footer.jsp" %>
    </body>
</html>
