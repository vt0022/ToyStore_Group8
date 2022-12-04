<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <!-- menu mobie right -->
    <div id="mobile-pagemenu" class="mobile-boxpage d-flex hidden-md-up active d-md-none">
        <div class="content-boxpage col">
            <div class="box-header d-flex justify-content-between align-items-center">
                <div class="title-box">Menu</div>
                <div class="close-box">Đóng</div>
            </div>
            <div class="box-content">
                <nav>
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div id="megamenu" class="nov-megamenu clearfix">
                        <ul class="menu level1">
                            <li class="item home-page has-sub">
                                <a href="index.jsp" title="Trang chủ">
                                    <i class="fa fa-home" aria-hidden="true"></i>Trang chủ
                                </a>                               
                            </li>
                            <li class="item has-sub">
                                <a href="product-list.jsp" title="Sản phẩm">
                                    <i class="fa fa-list-alt" aria-hidden="true"></i>Sản phẩm
                                </a>
                            </li>
                            <li class="item has-sub">
                                <a href="contact.jsp" title="Liên hệ">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>Liên hệ
                                </a>
                            </li>
                            <li class="item has-sub">
                                <span class="arrow collapsed" data-toggle="collapse" data-target="#blog" aria-expanded="false" role="status">
                                    <i class="zmdi zmdi-minus"></i>
                                    <i class="zmdi zmdi-plus"></i>
                                </span>
                                <a href="#" title="Blog">
                                    <i class="fa fa-address-book" aria-hidden="true"></i>Xem thêm</a>

                                <div class="subCategory collapse" id="blog" aria-expanded="true" role="status">
                                    <ul>
                                        <li class="item">
                                            <a href="404-error.jsp" title="Lỗi 404">Lỗi 404</a>
                                        </li>
                                        <li class="item">
                                            <a href="about-us.jsp" title="Về chúng tôi">Về chúng tôi</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</html>
