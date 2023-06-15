<%-- 
    Document   : shop
    Created on : Mar 16, 2023, 2:59:59 AM
    Author     : Hades
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>
    </head>
    <body>
        <%@ include file="/includes/start.jsp" %>
        <%@ include file="/includes/navbar.jsp" %>
        <div class="shop">
            <div class="container">
                <div
                    class="row d-flex align-items-center justify-content-center text-center"
                    >
                    <div class="shop-text">
                        <h2 class="mt-2 mb-4 text-white">Shop</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container shop-content py-4">
            <div class="py-3 sub-link d-flex">
                <a href="/Attire/" class="px-2">Home</a>
                >
                <a href="shop" class="px-2">Shop</a>
                >
                <p class="px-2">${cateName.cname}</p>
            </div>
            <div class="row py-4">
                <div class="shop-left col-3">
                    <div>
                        <form class="search-f d-flex mb-4" action="search" method="get">
                            <input name="txt" id="search" type="search" placeholder="Search..." class="w-100" autofocus required />
                            <button type="submit">Go</button>    
                        </form>
                        <h4>Categories</h4>
                        <ul class="cate-list">
                            <c:forEach items="${listCategory}" var="listC">
                                <li class="py-2 ${cateTag == listC.cid ? "cate-active":""}">
                                    <!--<div class="d-flex justify-content-between text-center align-items-center">-->
                                    <a href="category?cid=${listC.cid}" class="cate-text">${listC.cname}</a>
                                    <!--<span>8</span>-->
                                    <!--</div>-->
                                </li>
                            </c:forEach>
                            <!--                            <li class="py-2 ">
                                                            <a href="#" class="cate-text">first</a>
                                                        </li>
                                                        <li class="py-2 ">
                                                            <a href="#" class="cate-text">second</a>
                                                        </li>
                                                        <li class="py-2">
                                                            <a href="#" class="cate-text">third</a>
                                                        </li>-->
                        </ul>
                    </div>
                    <div class="py-4">
                        <h4>Tags</h4>
                        <span>art, experiences, graphic, tree, lifestyle, philosophy, photo, plant</span>
                    </div>
                </div>
                <div class="shop-right col-9">
                    <span class="px-2 text-show">Showing all of item(s)</span>
                    <div class="collection-list row">
                            <c:forEach items="${listProduct}" var="listPd">
                                <div class="col-md-6 col-lg-4 col-xl-4 p-4">
                                    <div class="transition">
                                        <a href="productDetail?pid=${listPd.productID}&cid=${listPd.cid}" class="a-fix">
                                            <div class="collection-img position-relative">
                                                <img
                                                    src="${listPd.image}"
                                                    class="w-100"
                                                    />
                                            </div>
                                            <div class="text-center">
                                                <p class="text-capitalize my-1">${listPd.name}</p>
                                                <span class="fw-bold">$ ${listPd.price}.00</span>
                                                <div>
                                                    <a href="add-to-cart?id=${listPd.productID}&num=1" class="text-decoration-none text-dark btn-hover">
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

                        <!--                        <div class="col-md-6 col-lg-4 col-xl-4 p-4">
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
                                                <div class="col-md-6 col-lg-4 col-xl-4 p-4">
                                                    <div class="transition">
                                                        <div class="collection-img position-relative">
                                                            <img
                                                                src="assets/images/c_pant_girl.png"
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
                                                    </div>
                                                </div>
                        
                                                <div class="col-md-6 col-lg-4 col-xl-4 p-4">
                                                    <div class="transition">
                                                        <div class="collection-img position-relative">
                                                            <img
                                                                src="assets/images/c_polo-shirt.png"
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
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-lg-4 col-xl-4 p-4">
                                                    <div class="transition">
                                                        <div class="collection-img position-relative">
                                                            <img
                                                                src="assets/images/c_shirt-girl.png"
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
                                                    </div>
                                                </div>
                        
                                                <div class="col-md-6 col-lg-4 col-xl-4 p-4">
                                                    <div class="transition">
                                                        <div class="collection-img position-relative">
                                                            <img
                                                                src="assets/images/c_t-shirt_men.png"
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
                                                    </div>
                                                </div>
                        
                                                <div class="col-md-6 col-lg-4 col-xl-4 p-4">
                                                    <div class="transition">
                                                        <div class="collection-img position-relative">
                                                            <img
                                                                src="assets/images/c_tunic-shirt_girl.png"
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
                                                    </div>
                                                </div>
                        
                                                <div class="col-md-6 col-lg-4 col-xl-4 p-4">
                                                    <div class="transition">
                                                        <div class="collection-img position-relative">
                                                            <img
                                                                src="assets/images/c_undershirt.png"
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
                                                    </div>
                                                </div>
                        
                                                <div class="col-md-6 col-lg-4 col-xl-4 p-4">
                                                    <div class="transition">
                                                        <div class="collection-img position-relative">
                                                            <img
                                                                src="assets/images/c_western-shirt.png"
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
                                                    </div>
                                                </div>
                        -->
                    </div>
                    <div class="d-flex justify-content-center py-4">
                        <c:set var="count" value="${count}"></c:set>
                        <c:if test="${count > 9}">
                            <c:set var="startIndex" value="${tag-1}"></c:set>
                            <c:set var="endIndex" value="${tag+1}"></c:set>
                            <c:choose>
                                <c:when test="${tag>1}">
                                    <button class="btn-s"><a href="shop?index=${1}"><<</a></button>
                                    <button class="btn-s"><a href="shop?index=${startIndex}">Prev</a></button>
                                </c:when>
                                <c:otherwise>
                                    <button class="btn-s"><a href="shop?index=${1}"><<</a></button>
                                    <button class="btn-s"><a href="shop?index=${tag}">Prev</a></button>
                                </c:otherwise>
                            </c:choose>

                            <c:choose>
                                <c:when test="${tag==1}">
                                    <button class="btn-s" > <a class="${tag == tag?"paging-active":""}"  href="shop?index=${tag}">${tag}</a></button>
                                    <button class="btn-s"> <a   href="shop?index=${tag+1}">${tag+1}</a></button>
                                    <button class="btn-s"> <a   href="shop?index=${tag+2}">${tag+2}</a></button>
                                    </c:when>
                                    <c:when test="${tag==endP}">
                                    <button class="btn-s"> <a   href="shop?index=${tag-2}">${tag-2}</a></button>
                                    <button class="btn-s"> <a   href="shop?index=${tag-1}">${tag-1}</a></button>

                                    <button class="btn-s"> <a class="${tag == tag?"paging-active":""}"  href="shop?index=${tag}">${tag}</a></button>

                                </c:when>
                                <c:otherwise>
                                    <button class="btn-s"> <a   href="shop?index=${tag-1}">${tag-1}</a></button>   
                                    <button class="btn-s"> <a class="${tag == tag?"paging-active":""}"  href="shop?index=${tag}">${tag}</a></button>
                                    <button class="btn-s"> <a   href="shop?index=${tag+1}">${tag+1}</a></button>
                                    </c:otherwise>
                                </c:choose>

                            <c:choose>
                                <c:when test="${tag < endP}">
                                    <button class="btn-s"><a href="shop?index=${endIndex}">Next</a></button>
                                    <button class="btn-s"><a href="shop?index=${endP}">>></a></button>
                                </c:when>
                                <c:otherwise>
                                    <button class="btn-s"><a href="shop?index=${tag}">Next</a></button>
                                    <button class="btn-s"><a href="shop?index=${endP}">>></a></button>
                                </c:otherwise>
                            </c:choose>
                        </c:if>
                    </div>
                </div >
            </div>
        </div>
        <%@ include file="/includes/footer.jsp" %>
    </body>
</html>
