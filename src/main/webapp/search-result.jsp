<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<!--<![endif]-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
    <!-- product-grid-sidebar-left10:54-->
    <head>
        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sản phẩm</title>

        <meta name="keywords" content="Furniture, Decor, Interior">
        <meta name="description" content="Furnitica - Minimalist Furniture HTML Template">
        <meta name="author" content="tivatheme">


        <!-- Mobile Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700" rel="stylesheet">

        <!-- Vendor CSS -->
        <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="libs/nivo-slider/css/nivo-slider.css">
        <link rel="stylesheet" href="libs/nivo-slider/css/animate.css">
        <link rel="stylesheet" href="libs/nivo-slider/css/style.css">
        <link rel="stylesheet" href="libs/font-material/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="libs/slider-range/css/jslider.css">
        <link rel="stylesheet" href="libs/owl-carousel/assets/owl.carousel.min.css">

        <!-- Template CSS -->
        <link rel="stylesheet" type="text/css" href="styles/main.css">
        <link rel="stylesheet" type="text/css" href="styles/responsive.css">
    </head>

    <body id="product-sidebar-left" class="product-grid-sidebar-left">      
        <!-- header -->
        <header>
            <jsp:include page="header.jsp" />
        </header>

        <!-- main content -->
        <div class="main-content">
            <div id="wrapper-site">
                <div id="content-wrapper" class="full-width">
                    <div id="main">
                        <div class="page-home">
                            <!-- breadcrumb -->
                            <nav class="breadcrumb-bg">
                                <div class="container no-index">
                                    <div class="breadcrumb">
                                        <ol>
                                            <li>
                                                <a href="productlist">
                                                    <span>Sản phẩm</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <c:forEach items = "${categorylist}" var = "cat">
                                                        <c:if test="${cat.id == tag}">
                                                            <span>${cat.name}</span>
                                                        </c:if>
                                                    </c:forEach>

                                                </a>
                                            </li>
                                        </ol>
                                    </div>
                                </div>
                            </nav>

                            <div class="container">
                                <div class="content">
                                    <div class="row">
                                        <div class="sidebar-3 sidebar-collection col-lg-3 col-md-4 col-sm-4">

                                            <!-- category menu -->
                                            <div class="sidebar-block">
                                                <!--Sửa chữa danh mục-->
                                                <div class="title-block">Danh mục</div>
                                                <div class="block-content">
                                                    <!--Loại bỏ nút mở rộng-->
                                                    <c:forEach items = "${categorylist}" var = "cat">
                                                        <div class="cateTitle hasSubCategory open level1">
                                                            <a class="cateItem" href="categorylist?id=${cat.id}">${cat.name}</a>
                                                        </div>
                                                    </c:forEach>
                                                    <!--Loại bỏ các mục nhỏ-->
                                                </div>
                                            </div>

                                            <!-- best seller -->
                                            <div class="sidebar-block">
                                                <div class="title-block">Bộ lọc</div>
                                                <div class="new-item-content">
                                                    <h3 class="title-product">Danh mục</h3>
                                                    <ul class="scroll-product">
                                                        <c:forEach items = "${categorylist}" var = "cat">
                                                            <li>
                                                                <label class="check">
                                                                    <input type="checkbox">
                                                                    <span class="checkmark"></span>
                                                                </label>
                                                                <a href="#">
                                                                    <b>${cat.name}</b>
                                                                    <span class="quantity">()</span>
                                                                </a>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                                <div class="new-item-content">
                                                    <h3 class="title-product">Nhà sản xuất</h3>
                                                    <ul class="scroll-product">
                                                        <li>
                                                            <label class="check">
                                                                <input type="checkbox">
                                                                <span class="checkmark"></span>
                                                            </label>
                                                            <a href="#">
                                                                <b>Hoa Sen Hồng</b>
                                                                <span class="quantity">(30)</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <label class="check">
                                                                <input type="checkbox">
                                                                <span class="checkmark"></span>
                                                            </label>
                                                            <a href="#">
                                                                <b>Hoàng Gia Sơn</b>
                                                                <span class="quantity">(30)</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <label class="check">
                                                                <input type="checkbox">
                                                                <span class="checkmark"></span>
                                                            </label>
                                                            <a href="#">
                                                                <b>Tân Phát</b>
                                                                <span class="quantity">(30)</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <label class="check">
                                                                <input type="checkbox">
                                                                <span class="checkmark"></span>
                                                            </label>
                                                            <a href="#">
                                                                <b>Ân Hồng Hạnh</b>
                                                                <span class="quantity">(30)</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <label class="check">
                                                                <input type="checkbox">
                                                                <span class="checkmark"></span>
                                                            </label>
                                                            <a href="#">
                                                                <b>Lego</b>
                                                                <span class="quantity">(30)</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <label class="check">
                                                                <input type="checkbox">
                                                                <span class="checkmark"></span>
                                                            </label>
                                                            <a href="#">
                                                                <b>Bandai Namco</b>
                                                                <span class="quantity">(30)</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <label class="check">
                                                                <input type="checkbox">
                                                                <span class="checkmark"></span>
                                                            </label>
                                                            <a href="#">
                                                                <b>Hasbro</b>
                                                                <span class="quantity">(30)</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <label class="check">
                                                                <input type="checkbox">
                                                                <span class="checkmark"></span>
                                                            </label>
                                                            <a href="#">
                                                                <b>Mattel</b>
                                                                <span class="quantity">(30)</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="tiva-filter-price new-item-content sidebar-block">
                                                    <h3 class="title-product">Giá</h3>
                                                    <div id="block_price_filter" class="block">
                                                        <div class="block-content">
                                                            <div id="slider-range" class="tiva-filter">
                                                                <div class="filter-itemprice-filter">
                                                                    <div class="layout-slider">
                                                                        <input id="price-filter" name="price" value="0;5000000" />
                                                                        <!--Cột giá tiền đã bị ẩn-->
                                                                        <!--
                                                                        <span class="jslider jslider_plastic">
                                                                            <table>
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <div class="jslider-bg">
                                                                                                <i class="l"></i>
                                                                                                <i class="f"></i>
                                                                                                <i class="r"></i>
                                                                                                <i class="v" style="left: 0%; width: 100%;"></i>
                                                                                            </div>
                                                                                            <div class="jslider-pointer" style="left: 0%;"></div>
                                                                                            <div class="jslider-pointer jslider-pointer-to" style="left: 100%;"></div>
                                                                                            <div class="jslider-label" style="display: none;">
                                                                                                <span>0</span>
                                                                                            </div>
                                                                                            <div class="jslider-label jslider-label-to" style="">
                                                                                                <span>100</span>&nbsp;$
                                                                                            </div>
                                                                                            <div class="jslider-value" style="left: 0%; margin-left: 0px; right: auto; visibility: visible;">
                                                                                                <span>0</span>&nbsp;$
                                                                                            </div>
                                                                                            <div class="jslider-value jslider-value-to" style="visibility: visible; left: auto; margin-left: 0px; right: 0px;">
                                                                                                <span>100</span>&nbsp;$
                                                                                            </div>
                                                                                            <div class="jslider-scale"></div>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </span>
                                                                        -->
                                                                    </div>
                                                                    <div class="layout-slider-settings"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!--Đồ chơi-->
                                        <div class="col-sm-8 col-lg-9 col-md-8 product-container">
                                            <c:forEach items = "${categorylist}" var = "cat">
                                                <c:if test="${cat.id == tag}">
                                                    <h1>${cat.name}</h1>
                                                </c:if>
                                            </c:forEach>
                                            <div class="js-product-list-top firt nav-top">
                                                <div class="d-flex justify-content-around row">
                                                    <div class="col col-xs-12">
                                                        <ul class="nav nav-tabs">
                                                            <li>
                                                                <a href="#grid" data-toggle="tab" class="active show fa fa-th-large"></a>
                                                            </li>
                                                            <li>
                                                                <a href="#list" data-toggle="tab" class="fa fa-list-ul"></a>
                                                            </li>
                                                        </ul>
                                                        <div class="hidden-sm-down total-products">
                                                            <p>Các sản phẩm của chúng tôi</p>
                                                        </div>
                                                    </div>
                                                    <!--Sắp xếp-->
                                                    <div class="col col-xs-12">
                                                        <div class="d-flex sort-by-row justify-content-lg-end justify-content-md-end">

                                                            <div class="products-sort-order dropdown">
                                                                <select class="select-title">
                                                                    <option value="">Sắp xếp theo</option>
                                                                    <option value="">Tên, từ A đến Z</option>
                                                                    <option value="">Tên, từ Z đến A</option>
                                                                    <option value="">Giá tăng dần</option>
                                                                    <option value="">Giá giảm dần</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-content product-items">
                                                <div id="grid" class="related tab-pane fade in active show">
                                                    <div class="row">
                                                        <!-- Hiển thị dữ liệu -->
                                                        <c:forEach items="${productlist}" var="pro">
                                                            <div class="item text-center col-md-4">
                                                                <div class="product-miniature js-product-miniature item-one first-item">
                                                                    <div class="thumbnail-container border">
                                                                        <a href="productdetail?id=${pro.id}">
                                                                            <img class="img-fluid image-cover" src="${pro.image}" alt="img">
                                                                            <!--<img class="img-fluid image-secondary" src="img/product/22.jpg" alt="img">-->
                                                                        </a>
                                                                        <!--
                                                                        <div class="highlighted-informations">
                                                                            <div class="variant-links">
                                                                                <a href="#" class="color beige" title="Beige"></a>
                                                                                <a href="#" class="color orange" title="Orange"></a>
                                                                                <a href="#" class="color green" title="Green"></a>
                                                                            </div>
                                                                        </div>
                                                                        -->
                                                                    </div>
                                                                    <div class="product-description">
                                                                        <div class="product-groups">
                                                                            <div class="product-title">
                                                                                <a href="productdetail?id=${pro.id}">${pro.name}</a>
                                                                            </div>
                                                                            <div class="rating">
                                                                                <div class="star-content">
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                    <div class="star"></div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="product-group-price">
                                                                                <div class="product-price-and-shipping">
                                                                                    <span class="price">${pro.price}đ</span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="product-buttons d-flex justify-content-center">
                                                                            <form action="#" method="post" class="formAddToCart">
                                                                                <input type="hidden" name="id_product" value="1">
                                                                                <!-- đưa đến trang chi tiết sản phẩm -->
                                                                                <a class="add-to-cart" href="productdetail?id=${pro.id}" data-button-action="add-to-cart">
                                                                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                                                </a>
                                                                            </form>
                                                                            <a class="addToWishlist" href="#" data-rel="1" onclick="">
                                                                                <i class="fa fa-heart" aria-hidden="true"></i>
                                                                            </a>
                                                                            <a href="productdetail?pid=${pro.id}" class="quick-view hidden-sm-down" data-link-action="quickview">
                                                                                <i class="fa fa-eye" aria-hidden="true"></i>
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- pagination -->
                                            <div class="pagination">
                                                <div class="js-product-list-top ">
                                                    <div class="d-flex justify-content-around row">
                                                        <div class="showing col col-xs-12">
                                                            <span>${page} / ${end}</span>
                                                        </div>
                                                        <div class="page-list col col-xs-12">
                                                            <ul>
                                                                <li>
                                                                    <a rel="prev" href="productlist?index=${page-1}&s=${txtSearch}" class="${page == 1?"previous":""} disabled js-search-link"> <!-- Kích hoạt hoặc vô hiệu nút Trước -->
                                                                        Trước
                                                                    </a>
                                                                </li>
                                                                <c:forEach begin = "1" end = "${end}" var = "i">
                                                                    <li class="${page == i?"current active":""}"> <!-- Tô đậm trang dùng toán tử 3 ngôi -->
                                                                        <a rel="nofollow" href="search?index=${i}&s=${txtSearch}" class="disabled js-search-link"> <!-- cẩn thận nhầm url -->
                                                                            ${i}
                                                                        </a>
                                                                    </li>
                                                                </c:forEach>
                                                                <li>
                                                                    <a rel="next" href="search?index=${page+1}&s=${txtSearch}" class="${page == end?"next":""} disabled js-search-link"> <!-- Kích hoạt hoặc vô hiệu nút Trước -->
                                                                        Sau
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->
        <jsp:include page="footer.jsp" />

        !-- back top top -->
        <div class="back-to-top">
            <a href="#">
                <i class="fa fa-long-arrow-up"></i>
            </a>
        </div>

        <!-- menu-mobile-left -->
        <jsp:include page="menu-mobile-left.jsp" />
        <!-- menu-mobile-right -->
        <jsp:include page="menu-mobile-right.jsp" />


        <!-- Page Loader -->
        <div id="page-preloader">
            <div class="page-loading">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </div>
        <!-- Vendor JS -->
        <script src="libs/jquery/jquery.min.js"></script>
        <script src="libs/popper/popper.min.js"></script>
        <script src="libs/bootstrap/js/bootstrap.min.js"></script>
        <script src="libs/nivo-slider/js/jquery.nivo.slider.js"></script>
        <script src="libs/owl-carousel/owl.carousel.min.js"></script>
        <script src="libs/slider-range/js/tmpl.js"></script>
        <script src="libs/slider-range/js/jquery.dependClass-0.1.js"></script>
        <script src="libs/slider-range/js/draggable-0.1.js"></script>
        <script src="libs/slider-range/js/jquery.slider.js"></script>

        <!-- Template JS -->
        <script src="js/theme.js"></script>
    </body>
</html>