<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<!--<![endif]-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="keywords" content="Furniture, Decor, Interior">
    <meta name="description" content="Furnitica - Minimalist Furniture HTML Template">
    <meta name="author" content="tivatheme">


    <!-- Mobile Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700" rel="stylesheet">

    <!-- libs CSS -->
    <link rel="stylesheet" href="<c:url value="/View/Customer/libs/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/View/Customer/libs/font-awesome/css/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/View/Customer/libs/nivo-slider/css/nivo-slider.css"/>">
    <link rel="stylesheet" href="<c:url value="/View/Customer/libs/nivo-slider/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url value="/View/Customer/libs/nivo-slider/css/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/View/Customer/libs/font-material/css/material-design-iconic-font.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/View/Customer/libs/slider-range/css/jslider.css"/>">
    <link rel="stylesheet" href="<c:url value="/View/Customer/libs/owl-carousel/assets/owl.carousel.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/View/Customer/libs/slick-slider/css/slick.css"/>">
    <link rel="stylesheet" href="<c:url value="/View/Customer/libs/slick-slider/css/slick-theme.css"/>">

    <!-- Template CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/View/Customer/styles/main.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/View/Customer/styles/responsive.css"/>">

    <header style="background-color: white">
        <!-- header left mobie -->
        <div class="header-mobile d-md-none">
            <div class="mobile hidden-md-up text-xs-center d-flex align-items-center justify-content-around">

                <!-- menu left -->
                <div id="mobile_mainmenu" class="item-mobile-top">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </div>

                <!-- logo -->
                <div class="mobile-logo">
                    <a href="${pageContext.request.contextPath}/home">
                        <img class="logo-mobile img-fluid" src="img/home/MyLogoMobile.png" alt="Thế giới đồ chơi">
                    </a>
                </div>

                <!-- menu right -->
                <div class="mobile-menutop" data-target="#mobile-pagemenu">
                    <i class="zmdi zmdi-more"></i>
                </div>
            </div>

            <!-- search -->
            <div id="mobile_search" class="d-flex" style="margin-left: 20px">
                <div id="mobile_search_content">
                    <form method="get" action="search">
                        <input type="text" name="s" value="" placeholder="Tìm kiếm">
                        <button type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                    </form>
                </div>
                <div class="desktop_cart">
                    <div class="blockcart block-cart cart-preview tiva-toggle">
                        <div class="header-cart tiva-toggle-btn">
                            <span class="cart-products-count">1</span>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- header desktop -->
        <div class="header-top d-xs-none " style="background-color: white">
            <div class="container">
                <div class="row">
                    <!-- logo -->
                    <div class="col-sm-2 col-md-2 d-flex align-items-center">
                        <div id="logo">
                            <a href="index.jsp">
                                <img src="<c:url value="/View/Customer/img/home/homelogo.png"/>" alt="logo" class="img-fluid">
                            </a>
                        </div>
                    </div>

                    <!-- menu -->
                    <div class="col-sm-5 col-md-5 align-items-center justify-content-center navbar-expand-md main-menu">
                        <div class="menu navbar collapse navbar-collapse">
                            <ul class="menu-top navbar-nav">
                                <li>  
<!--                                    class="nav-link"-->
                                    <a href="<c:url value="/View/Customer/index.jsp"/>" class="parent">Trang chủ</a>
                                </li>
                                <li >
                                    <a href="${pageContext.request.contextPath}/productlist" class="parent">Sản phẩm</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/View/Customer/contact.jsp" class="parent">Liên hệ</a>
                                </li>
                                <li>
                                    <a href="#" class="parent">Xem thêm</a>
                                    <div class="dropdown-menu" style="width: 100%; position: absolute; left: 0;">
                                        <ul>
                                            <li class = item>
                                                <a href="/View/Customer/404-error.jsp" title = "404 Error">Lỗi 404</a>
                                            </li>
                                            <li class = item>
                                                <a href="${pageContext.request.contextPath}/View/Admin/login.jsp" title = "Administrator">Administrator</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul> 
                        </div>
                    </div>

                    <!-- search and account -->
                    <div class="col-sm-5 col-md-5 d-flex align-items-center justify-content-end" id="search_widget">
                        <form method="post" action="${pageContext.request.contextPath}/search">

                            <span role="status" aria-live="polite" class="ui-helper-hidden-accessible"></span>
                            <input type="text" name="s" value="" placeholder="Tìm kiếm" class="ui-autocomplete-input" autocomplete="off">
                            <button type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </form>

                        <div id="block_myaccount_infos" class="hidden-sm-down dropdown">
                            <div class="myaccount-title ">
                                <a href="#acount" data-toggle="collapse" class="acount">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <c:if test="${sessionScope.account != null}">
                                        <span>${sessionScope.account.name}</span>
                                    </c:if>
                                    <c:if test="${sessionScope.account == null}">
                                        <span>Tài khoản</span>
                                    </c:if>
                                    <i class="fa fa-angle-down" aria-hidden="true"></i>
                                </a>
                            </div>
                            <div id="acount" class="collapse">
                                <div class="account-list-content">
                                    <div>
                                        <a class="login" href="${pageContext.request.contextPath}/View/Customer/user-account.jsp" rel="nofollow" title="Log in to your customer account">
                                            <i class="fa fa-cog"></i>
                                            <span>Tài khoản của tôi</span>
                                        </a>
                                    </div>
                                    <c:if test="${sessionScope.account == null}">
                                        <div>
                                            <a class="login" href="${pageContext.request.contextPath}/View/Customer/user-login.jsp" rel="nofollow" title="Log in to your customer account">
                                                <i class="fa fa-sign-in"></i>
                                                <span>Đăng nhập</span>
                                            </a>
                                        </div>
                                        <div>
                                            <a class="register" href="${pageContext.request.contextPath}/View/Customer/user-register.jsp" rel="nofollow" title="Register Account">
                                                <i class="fa fa-user"></i>
                                                <span>Đăng ký tài khoản</span>
                                            </a>
                                        </div>
                                    </c:if>
                                    <div>
                                        <a class="check-out" href="${pageContext.request.contextPath}/placeorder" rel="nofollow" title="Checkout">
                                            <i class="fa fa-check" aria-hidden="true"></i>
                                            <span>Thanh toán</span>
                                        </a>
                                    </div>
                                    <c:if test="${sessionScope.account != null}">
                                        <div>
                                            <a class="login" href="${pageContext.request.contextPath}/logout" rel="nofollow" title="Đăng xuất">
                                                <i class="fa fa-sign-in"></i>
                                                <span>Đăng xuất</span>
                                            </a>
                                        </div>
                                    </c:if>
                                    <!--Đã xoá danh sách yêu thích-->
                                    <!--Đã xoá tiền tệ-->
                                </div>
                            </div>
                        </div>
                        <div class="desktop_cart">
                            <div class="blockcart block-cart cart-preview tiva-toggle">
                                <div class="header-cart tiva-toggle-btn">
<!--                                    <span class="cart-products-count">1</span>-->
                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                </div>
                                <div class="dropdown-content">
                                    <div class="cart-content">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td colspan="3" class="d-flex justify-content-center">
                                                        <div class="cart-button">
                                                            <a href="${pageContext.request.contextPath}/mycart" title="View Cart">Xem giỏ hàng</a>
                                                            <a href="${pageContext.request.contextPath}/myorders" title="Checkout">Xem đơn hàng</a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
</html>