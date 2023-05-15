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
        <title>Detail</title>
    </head>
    <body>
        <%@ include file="/includes/start.jsp" %>
        <%@ include file="/includes/navbar.jsp" %>
        <div class="container mt-17">
            <div class="row border-bt pb-5">
                <div class="col-6 product-img">
                    <img src="${detail.image}" alt="alt"/>
                </div>
                <div class="col-6">
                    <div class="py-3 sub-link d-flex">
                        <a href="/Attire/" class="px-2">Home</a>
                        >
                        <a href="shop" class="px-2">Shop</a>
                        >
                        <a href="category?cid=${cid}" class="px-2">${category.cname}</a>
                        >
                        <p class="px-2">${detail.name}</p>
                    </div>
                    <div class="product-content">
                        <div class="border-bt pb-3">
                            <h3 class="text-capitalize mt-4">${detail.name}</h3>
                            <span class="fw-bold">$ ${detail.price}</span>
                        </div>
                        <div class="py-4 border-bt pd-text">
                            <p>${detail.description}</p>
                            <div class="product-input d-flex mt-4">
                                <button class="btn btn-pd">-</button>
                                <input type="number" id="typeNumber" class="form-control" value="1" />
                                <button class="btn btn-pd">+</button>
                                <div class="add-btn">
                                    <button class="btn text-dark button">
                                        <i class="fa fa-shopping-cart"></i> Add to Cart
                                    </button>
                                </div>
                            </div>
                            <div class="buyn-btn mt-3">
                                <button class="btn text-dark button">
                                    <i class="fa fa-shopping-cart"></i> Buy Now
                                </button>
                            </div>
                        </div>
                        <div class="py-3">
                            <div class="d-flex  text-items">
                                <span>SKU: </span>
                                <p class="mx-2">Leuleu</p>
                            </div>   
                            <div class="d-flex  text-items">    
                                <span>Categories: </span>
                                <p class="mx-2">${category.cname}</p>
                            </div> 
                            <div class="d-flex  text-items">
                                <span>Tags: </span>
                                <p class="mx-2">Leuleu, Hihi</p>
                            </div>
                            <div class="d-flex  text-items">
                                <span>Share: </span>
                                <p class="mx-2">Leuleu</p>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="py-5">
                <div class="title text-center align-items-center feature-title">
                    <h2 class="position-relative">Related Products</h2>
                </div>
                <div class="collection-list row">
                    <c:forEach items="${list}" var="p">
                        <div class="col-md-6 col-lg-3 col-xl-3 p-4">
                            <div class="transition">
                                <a href="productDetail?pid=${p.productID}&cid=${p.cid}" class="a-fix">
                                    <div class="collection-img position-relative">
                                        <img
                                            src="${p.image}"
                                            class="w-100"
                                            />
                                    </div>
                                    <div class="text-center">
                                        <p class="text-capitalize my-1">${p.name}</p>
                                        <span class="fw-bold">$ ${p.price}</span>
                                        <div>
                                            <a href="shop" class="text-decoration-none text-dark btn-hover">
                                                <button class="btn m-2 text-dark button">
                                                    <i class="fa fa-shopping-cart"></i> Add to Cart
                                                </button>
                                            </a>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                    <!--                    <div class="col-md-6 col-lg-3 col-xl-3 p-4">
                                            <div class="transition">
                                                <a href="#" class="a-fix">
                                                    <div class="collection-img position-relative">
                                                        <img
                                                            src="assets/images/c_formal_gray_shirt.png"
                                                            class="w-100"
                                                            />
                                                    </div>
                                                    <div class="text-center">
                                                        <p class="text-capitalize my-1">gray shirt</p>
                                                        <span class="fw-bold">$ 45.50</span>
                                                        <div>
                                                            <button class="btn m-2 text-dark button">
                                                                <i class="fa fa-shopping-cart"></i> Add to Cart
                                                            </button>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-3 col-xl-3 p-4">
                                            <div class="transition">
                                                <a href="#" class="a-fix">
                                                    <div class="collection-img position-relative">
                                                        <img
                                                            src="assets/images/c_formal_gray_shirt.png"
                                                            class="w-100"
                                                            />
                                                    </div>
                                                    <div class="text-center">
                                                        <p class="text-capitalize my-1">gray shirt</p>
                                                        <span class="fw-bold">$ 45.50</span>
                                                        <div>
                                                            <button class="btn m-2 text-dark button">
                                                                <i class="fa fa-shopping-cart"></i> Add to Cart
                                                            </button>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-3 col-xl-3 p-4">
                                            <div class="transition">
                                                <a href="#" class="a-fix">
                                                    <div class="collection-img position-relative">
                                                        <img
                                                            src="assets/images/c_formal_gray_shirt.png"
                                                            class="w-100"
                                                            />
                                                    </div>
                                                    <div class="text-center">
                                                        <p class="text-capitalize my-1">gray shirt</p>
                                                        <span class="fw-bold">$ 45.50</span>
                                                        <div>
                                                            <button class="btn m-2 text-dark button">
                                                                <i class="fa fa-shopping-cart"></i> Add to Cart
                                                            </button>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-lg-3 col-xl-3 p-4">
                                            <div class="transition">
                                                <a href="#" class="a-fix">
                                                    <div class="collection-img position-relative">
                                                        <img
                                                            src="assets/images/c_formal_gray_shirt.png"
                                                            class="w-100"
                                                            />
                                                    </div>
                                                    <div class="text-center">
                                                        <p class="text-capitalize my-1">gray shirt</p>
                                                        <span class="fw-bold">$ 45.50</span>
                                                        <div>
                                                            <button class="btn m-2 text-dark button">
                                                                <i class="fa fa-shopping-cart"></i> Add to Cart
                                                            </button>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>-->
                </div>
            </div>
        </div>
        <%@ include file="/includes/footer.jsp" %>
    </body>
</html>
