<%-- 
    Document   : collection
    Created on : Mar 16, 2023, 12:42:24 AM
    Author     : Hades
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="collection" class="py-5">
    <div class="container">
        <div class="title text-center">
            <h2 class="position-relative d-inline-block">
                Best Collection
            </h2>
        </div>
        <div class="row g-0">
            <div
                class="d-flex flex-wrap justify-content-center mt-5 filter-button-group"
                >
                <button
                    type="button"
                    class="btn m-2 text-dark active-filter-btn"
                    data-filter=".eu"
                    >
                    All
                </button>
                <button
                    type="button"
                    class="btn m-2 text-dark"
                    data-filter=".best"
                    >
                    Best Sellers
                </button>
                <button
                    type="button"
                    class="btn m-2 text-dark"
                    data-filter=".feat"
                    >
                    Featured
                </button>
                <button
                    type="button"
                    class="btn m-2 text-dark"
                    data-filter=".new"
                    >
                    New Arrival
                </button>
            </div>
            <!-- items -->
            <div class="collection-list mt-4 row gx-0 gy-3">
                <c:forEach items="${list}" var="p" >
                    <div class="col-md-6 col-lg-4 col-xl-3 p-2 ${p.filter} ">
                    <div class="transition">
                        <a href="productDetail?pid=${p.productID}&cid=${p.cid}" class="a-fix">
                            <div class="collection-img position-relative">
                                <img
                                    src="${p.image}"
                                    class="w-100"
                                    />
                            </div>
                            <div class="text-center">
                                <div class="rating mt-3">
                                    <span class="text-primary"
                                          ><i class="fas fa-star"></i
                                        ></span>
                                    <span class="text-primary"
                                          ><i class="fas fa-star"></i
                                        ></span>
                                    <span class="text-primary"
                                          ><i class="fas fa-star"></i
                                        ></span>
                                    <span class="text-primary"
                                          ><i class="fas fa-star"></i
                                        ></span>
                                    <span class="text-primary"
                                          ><i class="fas fa-star"></i
                                        ></span>
                                </div>
                                <p class="text-capitalize my-1">${p.name}</p>
                                <span class="fw-bold">$ ${p.price}.00</span>
                                <div>
                                    <a href="shop" class="text-decoration-none text-dark btn-hover">
                                        <button class="btn m-2 text-dark button">
                                        <i class="fa fa-shopping-cart"></i> Buy now
                                    </button>
                                    </a>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                </c:forEach>
<!--                <div class="col-md-6 col-lg-4 col-xl-3 p-2 best ">
                    <div class="transition">
                        <a href="#" class="a-fix">
                            <div class="collection-img position-relative">
                                <img
                                    src="assets/images/c_formal_gray_shirt.png"
                                    class="w-100"
                                    />
                                                                <span
                                                                    class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center"
                                                                    >sale</span
                                                                >
                            </div>
                            <div class="text-center">
                                <div class="rating mt-3">
                                    <span class="text-primary"
                                          ><i class="fas fa-star"></i
                                        ></span>
                                    <span class="text-primary"
                                          ><i class="fas fa-star"></i
                                        ></span>
                                    <span class="text-primary"
                                          ><i class="fas fa-star"></i
                                        ></span>
                                    <span class="text-primary"
                                          ><i class="fas fa-star"></i
                                        ></span>
                                    <span class="text-primary"
                                          ><i class="fas fa-star"></i
                                        ></span>
                                </div>
                                <p class="text-capitalize my-1">gray shirt</p>
                                <span class="fw-bold">$ 45.50</span>
                                <div>
                                    <button class="btn m-2 text-dark button">
                                        <i class="fa fa-shopping-cart"></i> Buy now
                                    </button>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>    
                <div class="col-md-6 col-lg-4 col-xl-3 p-2 feat ">
                    <div class="transition">
                        <div class="collection-img position-relative">
                            <img
                                src="assets/images/c_pant_girl.png"
                                class="w-100"
                                />
                                                            <span
                                                                class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center"
                                                                >sale</span
                                                            >
                        </div>
                        <div class="text-center">
                            <div class="rating mt-3">
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                            </div>
                            <p class="text-capitalize my-1">gray shirt</p>
                            <span class="fw-bold">$ 45.50</span>
                            <div>
                                <button class="btn m-2 text-dark button">
                                    <i class="fa fa-shopping-cart"></i> Buy now
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-3 p-2 new ">
                    <div class="transition">
                        <div class="collection-img position-relative">
                            <img
                                src="assets/images/c_polo-shirt.png"
                                class="w-100"
                                />
                                                            <span
                                                                class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center"
                                                                >sale</span
                                                            >
                        </div>
                        <div class="text-center">
                            <div class="rating mt-3">
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                            </div>
                            <p class="text-capitalize my-1">gray shirt</p>
                            <span class="fw-bold">$ 45.50</span>
                            <div>
                                <button class="btn m-2 text-dark button">
                                    <i class="fa fa-shopping-cart"></i> Buy now
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-xl-3 p-2 best ">
                    <div class="transition">
                        <div class="collection-img position-relative">
                            <img
                                src="assets/images/c_shirt-girl.png"
                                class="w-100"
                                />
                                                            <span
                                                                class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center"
                                                                >sale</span
                                                            >
                        </div>
                        <div class="text-center">
                            <div class="rating mt-3">
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                            </div>
                            <p class="text-capitalize my-1">gray shirt</p>
                            <span class="fw-bold">$ 45.50</span>
                            <div>
                                <button class="btn m-2 text-dark button">
                                    <i class="fa fa-shopping-cart"></i> Buy now
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-3 p-2 feat ">
                    <div class="transition">
                        <div class="collection-img position-relative">
                            <img
                                src="assets/images/c_t-shirt_men.png"
                                class="w-100"
                                />
                                                            <span
                                                                class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center"
                                                                >sale</span
                                                            >
                        </div>
                        <div class="text-center">
                            <div class="rating mt-3">
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                            </div>
                            <p class="text-capitalize my-1">gray shirt</p>
                            <span class="fw-bold">$ 45.50</span>
                            <div>
                                <button class="btn m-2 text-dark button">
                                    <i class="fa fa-shopping-cart"></i> Buy now
                                </button>
                            </div>
                        </div>
                    </div>
                </div>-->

<!--                <div class="col-md-6 col-lg-4 col-xl-3 p-2 new ">
                    <div class="transition">
                        <div class="collection-img position-relative">
                            <img
                                src="assets/images/c_tunic-shirt_girl.png"
                                class="w-100"
                                />
                                                            <span
                                                                class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center"
                                                                >sale</span
                                                            >
                        </div>
                        <div class="text-center">
                            <div class="rating mt-3">
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                            </div>
                            <p class="text-capitalize my-1">gray shirt</p>
                            <span class="fw-bold">$ 45.50</span>
                            <div>
                                <button class="btn m-2 text-dark button">
                                    <i class="fa fa-shopping-cart"></i> Buy now
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-3 p-2 best ">
                    <div class="transition">
                        <div class="collection-img position-relative">
                            <img
                                src="assets/images/c_undershirt.png"
                                class="w-100"
                                />
                                                            <span
                                                                class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center"
                                                                >sale</span
                                                            >
                        </div>
                        <div class="text-center">
                            <div class="rating mt-3">
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                            </div>
                            <p class="text-capitalize my-1">gray shirt</p>
                            <span class="fw-bold">$ 45.50</span>
                            <div>
                                <button class="btn m-2 text-dark button">
                                    <i class="fa fa-shopping-cart"></i> buy now
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-lg-4 col-xl-3 p-2 feat ">
                    <div class="transition">
                        <div class="collection-img position-relative">
                            <img
                                src="assets/images/c_western-shirt.png"
                                class="w-100"
                                />
                                                            <span
                                                                class="position-absolute bg-primary text-white d-flex align-items-center justify-content-center"
                                                                >sale</span
                                                            >
                        </div>
                        <div class="text-center">
                            <div class="rating mt-3">
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                                <span class="text-primary"
                                      ><i class="fas fa-star"></i
                                    ></span>
                            </div>
                            <p class="text-capitalize my-1">gray shirt</p>
                            <span class="fw-bold">$ 45.50</span>
                            <div>
                                <button class="btn m-2 text-dark button">
                                    <i class="fa fa-shopping-cart"></i> buy now
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            -->
            </div>
            <div
                class="d-flex flex-wrap justify-content-center mt-5 btn-more"
                >
                <a href="shop">
                <button
                    type="button"
                    class="btn m-2 text-dark"
                    data-filter=".eu"
                    >
                    Show more
                </button>
                </a>
            </div>
        </div>
    </div>
</section>
