<%@ page import="com.dulich.ultils.SecurityUtils" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/5/2020
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <title>Trang chủ</title>
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <meta name="author" content="ThemePunch"/>
    <meta name="description" content="The Garden theme tempalte">
    <meta name="keywords" content="The Garden theme template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/common/common-css-js.jsp" %>
    <%@include file="/common/slide-js.jsp" %>
    <%--add slider js --%>
    <!--Theme style-->
</head>

<body>
<div class="the-garden">
    <header id="header" class="header-serviceV2 aaaa">
        <div class="home-menu">
            <nav class="navbar-core navbar-white navbar-v1 headroom headroom--not-bottom headroom--pinned headroom--top">
                <div class="s-wrapper s-wrapper-service">
                    <div class="container">
                        <div class="s-inner clearfix">
                            <div class="pull-left nav-left">
                                <div class="logo">
                                    <a href="/trang-chu">
                                        <h1>Beauty Shop</h1>
                                    </a>
                                </div>
                            </div>
                            <button class="hamburger has-animation hamburger--collapse" id="toggle-icon">
                                    <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                    </span>
                            </button>
                            <div class="pull-right nav-right">
                                <div class="navbar-main">
                                    <ul class="navbar-menu">
                                        <li class="dropdown">
                                            <a href="/trang-chu" class="active-menu">Trang chủ</a>
                                        </li>
                                        <li class="dropdown productMN">
                                            <a href="#" class="active-menu">Trang điểm</a>
                                            <i class="fa fa-angle-down"></i>
                                            <div class="box-menu">
                                                <div class="row">

                                                    <div class="col-md-6 ">
                                                        <div class=" slideSort">
                                                            <h2 class="slider-left-title"
                                                                style=" font-size: 20px;color: #c19b76;font-family: serif;">
                                                                Các loại sản phẩm</h2>
                                                            <br>
                                                            <ul class="slide-left-list">
                                                                <li><h3><a
                                                                        href="/page-san-pham?name=son-moi&page=1&limit=6">Son
                                                                    môi</a></h3></li>
                                                                <br>
                                                                <li><h3><a
                                                                        href="/page-san-pham?name=mascara&page=1&limit=6">Mascara</a>
                                                                </h3></li>
                                                                <br>
                                                                <li><h3><a
                                                                        href="/page-san-pham?name=kem-phan&page=1&limit=6">Kem
                                                                    phủ -
                                                                    phấn</a></h3></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 ">
                                                        <div class="box-slider-left slideNewproduct slideNewproduct2">
                                                            <h2 class="slider-left-title"
                                                                style=" font-size: 20px;color: #c19b76;font-family: serif;margin-bottom: 10px">
                                                                Sản phẩm bán chạy nhất</h2>
                                                            <div class="box-slideNewproduct">
                                                                <div class="slideNewproduct-item slideNewproduct-img">
                                                                    <a href="/san-pham?id=21&name=gluwhite-vn"><img
                                                                            src="<c:url value="/template/images/gluwhite-vn.jpg"/> "
                                                                            alt="product1"
                                                                            class="img-responsive"></a>
                                                                </div>
                                                                <div class="slideNewproduct-item slideNewproduct-text">
                                                                    <h4><a href="/san-pham?id=21&name=gluwhite-vn">Viên
                                                                        sủi trắng da Gluwhite</a></h4>
                                                                    <p class="slideProduct-price"
                                                                       style="font-size: 16px;margin-top: 0;">890,000
                                                                        đ</p>
                                                                </div>
                                                            </div>
                                                            <br>
                                                            <div class="box-slideNewproduct">
                                                                <div class="slideNewproduct-item slideNewproduct-img">
                                                                    <a href="/san-pham?id=20&name=dakami-vn"><img
                                                                            src="<c:url value="/template/images/dakami-vn.jpg"/>"
                                                                            alt="product1"
                                                                            class="img-responsive"></a>
                                                                </div>
                                                                <div class="slideNewproduct-item slideNewproduct-text">
                                                                    <h4><a href="/san-pham?id=20&name=dakami-vn">Kem
                                                                        chống lão hóa Dakami</a></h4>
                                                                    <p class="slideProduct-price"
                                                                       style="font-size: 16px;margin-top: 0;">790,000
                                                                        đ</p>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dropdown productMN">
                                            <a href="#" class="active-menu">Chăm sóc da</a>
                                            <i class="fa fa-angle-down"></i>
                                            <div class="box-menu">
                                                <div class="row">

                                                    <div class="col-md-6 ">
                                                        <div class=" slideSort">
                                                            <h2 class="slider-left-title"
                                                                style=" font-size: 20px;color: #c19b76;font-family: serif;">
                                                                Các loại sản phẩm</h2>
                                                            <br>
                                                            <ul class="slide-left-list">
                                                                <li><h3><a
                                                                        href="/page-san-pham?name=kem-duong-da&page=1&limit=6">Kem
                                                                    dưỡng trắng da</a>
                                                                </h3></li>
                                                                <br>
                                                                <li><h3><a
                                                                        href="/page-san-pham?name=sua-rua-mat&page=1&limit=6">Sữa
                                                                    rửa mặt</a></h3></li>
                                                                <br>
                                                                <li><h3><a
                                                                        href="/page-san-pham?name=mat-na&page=1&limit=6">Mặt
                                                                    nạ
                                                                    dưỡng da</a></h3>
                                                                </li>
                                                                <br>
                                                                <li><h3><a
                                                                        href="/page-san-pham?name=tay-trang&page=1&limit=6">Tẩy
                                                                    trang</a></h3></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="box-slider-left slideNewproduct slideNewproduct2">
                                                            <h2 class="slider-left-title"
                                                                style=" font-size: 20px;color: #c19b76;font-family: serif;margin-bottom: 10px">
                                                                Sản phẩm bán chạy nhất</h2>
                                                            <div class="box-slideNewproduct ">
                                                                <div class="slideNewproduct-item slideNewproduct-img">
                                                                    <a href="/san-pham?id=18&name=22again-vn"><img
                                                                            src="<c:url value="/template/images/22again-vn.jpg"/>"
                                                                            alt="product1"
                                                                            class="img-responsive"></a>
                                                                </div>
                                                                <div class="slideNewproduct-item slideNewproduct-text">
                                                                    <h4><a href="/san-pham?id=18&name=22again-vn">Kem
                                                                        chống lão hóa 22again</a></h4>
                                                                    <p class="slideProduct-price"
                                                                       style="font-size: 16px;margin-top: 0;"> 790,000 đ
                                                                    </p>
                                                                </div>
                                                            </div>
                                                            <br>
                                                            <div class="box-slideNewproduct">
                                                                <div class="slideNewproduct-item slideNewproduct-img">
                                                                    <a href="/san-pham?id=23&name=lefery-vn"><img
                                                                            src="<c:url value="/template/images/lefery-vn.jpg"/>"
                                                                            alt="product1"
                                                                            class="img-responsive"></a>
                                                                </div>
                                                                <div class="slideNewproduct-item slideNewproduct-text">
                                                                    <h4><a href="/san-pham?id=23&name=lefery-vn">Kem
                                                                        dưỡng da Lefery</a></h4>
                                                                    <p class="slideProduct-price"
                                                                       style="font-size: 16px;margin-top: 0;">590,000
                                                                        đ</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="dropdown">
                                            <a href="/page-san-pham?name=thuc-pham-chuc-nang&page=1&limit=6"
                                               class="active-menu">Thực
                                                phẩm chức năng</a>
                                        </li>
                                        <security:authorize access="isAnonymous()">
                                            <li class="dropdown">
                                                <a href="/dang-nhap" class="active-menu">Đăng nhập</a>
                                            </li>
                                        </security:authorize>
                                        <li class="dropdown" id="cart-parent">
                                            <a href="/gio-hang"><img src="<c:url value="/template/images/cart.png"/>">
                                                <c:if test="${not empty carts && sessionScope.carts.size()!= 0}">
                                                    <div class="cart-alert">
                                                        <span>${sessionScope.carts.size()}</span>
                                                    </div>
                                                </c:if>
                                                <c:if test="${empty carts || sessionScope.carts.size() == 0}">
                                                    <div>
                                                        <span>
                                                                ${sessionScope.carts.size()}
                                                        </span>
                                                    </div>
                                                </c:if>
                                            </a>
                                        </li>
                                        <security:authorize access="isAuthenticated()">
                                            <li>
                                                <ul class="nav nav-pills" style="margin-top: 20px;margin-left: 50px;">
                                                    <li class="dropdown">
                                                        <a class="dropdown-toggle"
                                                           data-toggle="dropdown"
                                                           href="#"
                                                           style="border-radius: 20px; height: 40px; width: 40px; background-color: rosybrown; text-align: center">
                                                            <%=SecurityUtils.getPrincipal().getFullName().charAt(SecurityUtils.getPrincipal().getFullName().lastIndexOf(" ") + 1)%>
                                                            <b class="caret"></b>
                                                        </a>
                                                        <ul class="dropdown-menu">
                                                            <a href="#"> - Thông tin cá nhân</a>
                                                            <br>
                                                            <a href="/j_spring_security_logout"> - Đăng xuất</a>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                        </security:authorize>
                                    </ul>
                                </div>
<%--                                <div class="search2">--%>
<%--                                    <ul>--%>
<%--                                        <li>--%>
<%--                                            <input type="text" id="search" placeholder="Search">--%>
<%--                                        </li>--%>
<%--                                        <li>--%>
<%--                                            <div class="fa fa-search " id="search-button"></div>--%>
<%--                                        </li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
                            </div>

                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div class="home-bot">
            <div class="slider-headerrevo revo-v1 skew-slide">
                <div id="slide-home-serviceV2" class="rev_slider fullwidthabanner" style="display:none;"
                     data-version="5.4.1">

                    <ul>
                        <li data-transition="zoomin" data-slotamount="7" data-hideafterloop="0"
                            data-hideslideonmobile="off"
                            data-easein="Power4.easeInOut" class="item-1 slide-show-serviceV2">
                            <img src="<c:url value="/template/images/home2.jpg"/>" alt=""
                                 data-bgposition="center center"
                                 data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off"
                                 class="rev-slidebg img-responsive" data-no-retina>
                            <h1 class=" scoll-mr tp-caption tp-resizeme slider-geeting"
                                data-frames="[{&quot;from&quot;:&quot;y:50px;opacity:0;&quot;,&quot;speed&quot;:1500,&quot;to&quot;:&quot;o:1;&quot;,&quot;delay&quot;:900,&quot;ease&quot;:&quot;Power4.easeOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:500,&quot;to&quot;:&quot;y:-50px;opacity:0;&quot;,&quot;ease&quot;:&quot;Power2.easeIn&quot;}]"
                                data-fontsize="['42','42','42','42']"
                                data-textAlign="['center','center','center','center']"
                                data-lineheight="['80','80','80','50']"
                                data-x="['center']" data-hoffset="['0', '0', '0', '0']" data-y="['middle']"
                                data-voffset="['-35']">Beauty Shop
                            </h1>
                        </li>
                        <li data-transition="fadetotopfadefrombottom" data-slotamount="7" data-hideafterloop="0"
                            data-hideslideonmobile="off" data-easein="Power4.easeInOut"
                            class="item-2 slide-show-serviceV2">
                            <img src="<c:url value="/template/images/home1.jpg"/>" alt=""
                                 data-bgposition="center center"
                                 data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off"
                                 class="rev-slidebg img-responsive" data-no-retina>
                        </li>
                        <li data-transition="zoomin" data-slotamount="7" data-hideafterloop="0"
                            data-hideslideonmobile="off"
                            data-easein="Power4.easeInOut" class="item-3 slide-show-serviceV2">
                            <img src="<c:url value="/template/images/home.jpg"/>" alt=""
                                 data-bgposition="center center"
                                 data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off"
                                 class="rev-slidebg img-responsive" data-no-retina>
                        </li>
                        <li data-transition="fadetotopfadefrombottom" data-slotamount="7" data-hideafterloop="0"
                            data-hideslideonmobile="off" data-easein="Power4.easeInOut"
                            class="item-4 slide-show-serviceV2">
                            <img src="<c:url value="/template/images/home3.jpg"/>" alt=""
                                 data-bgposition="center center"
                                 data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off"
                                 class="rev-slidebg img-responsive" data-no-retina>
                        </li>
                    </ul>
                    <div class="tp-bannertimer styleSlide"></div>
                </div>
            </div>
        </div>
    </header>
    <section class="latest-product">
        <div class="container">
            <div class="latest-product-title title-text">
                <h3 class="wow animate__backInUp" data-wow-duration="0.5s"
                    style="font-size: 25px;color: #c19b76;font-family: serif;">Một số sản phẩm của chúng tôi</h3>
            </div>
            <div class="detail-navtab latest-product-tab">
                <div class="tab-content detail-tab">
                    <div id="all" class="tab-pane fade  active in">
                        <div class="row product-gird">
                            <c:forEach var="item" items="${items}">
                                <div class="col-md-3 col-sm-6 col-xs-12 wow animate__backInUp" data-wow-duration="0.5s">
                                    <div class="product-item productG "
                                         style="margin-top: 0;     min-height: 360px;display: flex;flex-direction: column;align-items: center;">
                                        <div class="product-image sizeImg"
                                             style="max-width: 270px;max-height: 300px;float: unset;position: relative;width: 100%;height: 100%">
                                            <img src="<c:url value="/template/images/${item.code}.jpg"/>" alt="product"
                                                 class="product-img-first img-responsive"
                                                 style="max-width: 270px; width: 100%; height: 240px; object-fit: cover;">
                                            <div class="arrIcon"></div>
                                            <div class="box-posi">-${item.sale}%</div>
                                            <div class="arrIcon2">
                                                <ul>
                                                    <li>
                                                        <div class="cart-button" data-id="${item.id}">
                                                            <i class="la la-shopping-cart"></i>
                                                        </div>
                                                    </li>
                                                    <li style="margin-left: 6px;margin-right: 6px;">
                                                        <a href="/san-pham?id=${item.id}&name=${item.code}">

                                                            <i class="la la-eye"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="/san-pham?id=${item.id}&name=${item.code}">

                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-text clearfix">
                                            <div class="product-left pull-left"
                                                 style="padding-top: 20px;padding-bottom: 15px;">
                                                <div class="product-name">
                                                    <h3 class="product-title">
                                                        <a href="/san-pham?id=${item.id}&name=${item.code}"
                                                           class="color-setting">${item.name}</a>
                                                    </h3>
                                                </div>
                                                <div class="product-price">
                                                    <span class="price1">${item.giaTruoc}</span>
                                                    <span class="price">${item.giaSau}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /product-item -->
                            </c:forEach>
                            <div class="col-md-3 col-sm-6 col-xs-12 wow animate__backInUp" data-wow-duration="0.5s">
                                <div class="product-item productG"
                                     style="margin-top: 0;     min-height: 360px;display: flex;flex-direction: column;align-items: center;">
                                    <div class="product-image sizeImg"
                                         style="max-width: 270px;max-height: 300px;float: unset;position: relative;width: 100%;height: 100%">
                                        <img src="<c:url value="/template/images/sonmoi3.jpg"/>" alt="product"
                                             class="product-img-first img-responsive"
                                             style="max-width: 270px; width: 100%; height: 240px; object-fit: cover;">
                                        <div class="arrIcon"></div>
                                        <div class="box-posi">-23%</div>
                                        <div class="arrIcon2">
                                            <ul>
                                                <li>
                                                    <a href="https://go.isclix.com/deep_link/5338615457852929080/5137195332044722903?url=https%3A%2F%2Fbeautyfriend.vn%2Fproducts%2Fson-li-amok-unique-city-technical-matte-lipstick">
                                                        <i class="la la-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li style="margin-left: 6px;margin-right: 6px;">
                                                    <a href="https://go.isclix.com/deep_link/5338615457852929080/5137195332044722903?url=https%3A%2F%2Fbeautyfriend.vn%2Fproducts%2Fson-li-amok-unique-city-technical-matte-lipstick">

                                                        <i class="la la-eye"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://go.isclix.com/deep_link/5338615457852929080/5137195332044722903?url=https%3A%2F%2Fbeautyfriend.vn%2Fproducts%2Fson-li-amok-unique-city-technical-matte-lipstick">

                                                        <i class="la la-heart-o"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-text clearfix">
                                        <div class="product-left pull-left"
                                             style="padding-top: 20px;padding-bottom: 15px;">
                                            <div class="product-name">
                                                <h3 class="product-title">
                                                    <a href="https://go.isclix.com/deep_link/5338615457852929080/5137195332044722903?url=https%3A%2F%2Fbeautyfriend.vn%2Fproducts%2Fson-li-amok-unique-city-technical-matte-lipstick"
                                                       class="color-setting">Son Lì Amok Unique City Technical Matte
                                                        Lipstick</a>
                                                </h3>
                                            </div>
                                            <div class="product-price">
                                                <span class="price1">416,000 Đ</span>
                                                <span class="price">320,000 Đ</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-12 wow animate__backInUp" data-wow-duration="0.5s">
                                <div class="product-item productG"
                                     style="margin-top: 0;     min-height: 360px;display: flex;flex-direction: column;align-items: center;">
                                    <div class="product-image sizeImg"
                                         style="max-width: 270px;max-height: 300px;float: unset;position: relative;width: 100%;height: 100%">
                                        <img src="<c:url value="/template/images/sonmoi7.jpg"/>" alt="product"
                                             class="product-img-first img-responsive"
                                             style="max-width: 270px; width: 100%; height: 240px; object-fit: cover;">
                                        <div class="arrIcon"></div>
                                        <div class="box-posi">-23%</div>
                                        <div class="arrIcon2">
                                            <ul>
                                                <li>
                                                    <a href="https://go.isclix.com/deep_link/5338615457852929080/5137195332044722903?url=https%3A%2F%2Fbeautyfriend.vn%2Fproducts%2Fson-thoi-sieu-li-the-face-shop-rouge-powder-matte">
                                                        <i class="la la-shopping-cart"></i>
                                                    </a>
                                                </li>
                                                <li style="margin-left: 6px;margin-right: 6px;">
                                                    <a href="https://go.isclix.com/deep_link/5338615457852929080/5137195332044722903?url=https%3A%2F%2Fbeautyfriend.vn%2Fproducts%2Fson-thoi-sieu-li-the-face-shop-rouge-powder-matte">

                                                        <i class="la la-eye"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="https://go.isclix.com/deep_link/5338615457852929080/5137195332044722903?url=https%3A%2F%2Fbeautyfriend.vn%2Fproducts%2Fson-thoi-sieu-li-the-face-shop-rouge-powder-matte">

                                                        <i class="la la-heart-o"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-text clearfix">
                                        <div class="product-left pull-left"
                                             style="padding-top: 20px;padding-bottom: 15px;">
                                            <div class="product-name">
                                                <h3 class="product-title">
                                                    <a href="https://go.isclix.com/deep_link/5338615457852929080/5137195332044722903?url=https%3A%2F%2Fbeautyfriend.vn%2Fproducts%2Fson-thoi-sieu-li-the-face-shop-rouge-powder-matte"
                                                       class="color-setting">Son Thỏi Siêu Lì The Face Shop Rouge Powder
                                                        Matte</a>
                                                </h3>
                                            </div>
                                            <div class="product-price">
                                                <span class="price1">490,000 Đ</span>
                                                <span class="price">370,000 Đ</span>
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
    </section>
    <section class="blog">
        <div class="container">
            <div class="row" style="margin-top: 30px">
                <div class="col-md-6 relative wow animate__backInLeft" data-wow-duration="0.5s"
                     style="margin-bottom: 50px">
                    <img src="//theme.hstatic.net/1000205447/1000553611/14/promo_banner.jpg?v=2617" alt="logo"
                         class="img-responsive">
                    <div class="arrival">
                        <a href="/page-san-pham?name=kem-duong-da&page=1&limit=6" style="color: #000"
                           class="Brightness">
                            <div class="btn-arrival">
                                <div>Mua sắm<img src="<c:url value="/template/images/arr.jpg"/>" alt="logo"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-6 relative wow animate__backInRight" data-wow-duration="0.5s"
                     style="    margin-bottom: 15px;">
                    <img src="//theme.hstatic.net/1000205447/1000553611/14/2promo_banner.jpg?v=2617" alt="logo"
                         class=" img-responsive">
                    <div class="arrival">
                        <a href="/page-san-pham?name=son-moi&page=1&limit=6" style="color: #000" class="Brightness">
                            <div class="btn-arrival">
                                <div>Mua sắm<img src="<c:url value="/template/images/arr.jpg"/>" alt="logo"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 80px">
                <div class="col-md-6 relative wow animate__backInLeft" data-wow-duration="0.5s"
                     style="    margin-bottom: 15px;">
                    <img src="//theme.hstatic.net/1000205447/1000553611/14/3promo_banner.jpg?v=2617" alt="logo"
                         class=" img-responsive">
                </div>
                <div class="col-md-6 relative wow animate__backInRight" data-wow-duration="0.5s"
                     style="    margin-bottom: 15px;">
                    <img src="//theme.hstatic.net/1000205447/1000553611/14/4promo_banner.jpg?v=2617" alt="logo"
                         class=" img-responsive">
                </div>
            </div>
            <div class="latest-product-title title-text" style="    margin-bottom: 30px;">
                <h3 style="font-size: 25px;color: #c19b76;font-family: serif;">Xu hướng làm đẹp</h3>
            </div>
            <div class="row wow animate__backInUp" data-wow-duration="0.5s">
                <div class="col-md-4">
                    <div class="relative">
                        <img src="//file.hstatic.net/1000205447/article/lam-dep-nhanh-1_933c2e768154459f9a611d625d9af3a2_eb53d027c6254b9e8fd6859533d0dbdc_large.jpg"
                             alt="logo" class=" img-responsive blog-css" style="height: 200px">
                        <div class="blog-posi">
                            <p>Jul 19,2019 / 4 Comments</p>
                            <div class="clearfix">
                                <h4>Các bước làm đẹp nhanh cho những buổi sáng vội vã</h4>
                                <a href="https://go.isclix.com/deep_link/5338615457852929080?url=https%3A%2F%2Fbeautyfriend.vn%2Fblogs%2Fxu-huong-lam-dep%2Fcac-buoc-lam-dep-nhanh-cho-nhung-buoi-sang-voi-va">
                                    <img src="<c:url value="/template/images/right-direction.png"/>"
                                         alt="logo"></a>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="relative">
                        <img src="//file.hstatic.net/1000205447/article/wdqocbf_2f062f3c65864d369ad654eb2950e157_b9314b6e82d84881817c6e11e7ae436a_large.jpg"
                             alt="blog" class=" img-responsive blog-css" style="height: 200px">
                        <div class="blog-posi">
                            <p>Feb 12, 2019 / 8 Comments</p>
                            <div class="clearfix">
                                <h4>5 Tips Để Tận Dụng Triệt Để Mặt Nạ Giấy Dưỡng Da</h4>
                                <a href="https://go.isclix.com/deep_link/5338615457852929080?url=https%3A%2F%2Fbeautyfriend.vn%2Fblogs%2Fxu-huong-lam-dep%2Ftips-tan-dung-triet-de-mat-na-giay-5-tips-dung-mat-na-giay">
                                    <img src="<c:url value="/template/images/right-direction.png"/>"
                                         alt="logo"></a>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="relative">
                        <img src="//file.hstatic.net/1000205447/article/banner_wed_hs_chong_cum_e60059b6d08c49c7ae67ad0e7a067213_large.jpg"
                             alt="logo" class=" img-responsive blog-css" style="height: 200px;">
                        <div class="blog-posi">
                            <p>Feb 12, 2019 / 8 Comments</p>
                            <div class="clearfix">
                                <h4>Hồng sâm Chống Cúm Gin Saponin Capsule - Tại Sao Nên Dùng Trong Mùa Dịch
                                    Covid-19</h4>
                                <a href="https://go.isclix.com/deep_link/5338615457852929080?url=https%3A%2F%2Fbeautyfriend.vn%2Fblogs%2Fxu-huong-lam-dep%2Fhong-sam-chong-cum-gin-saponin-capsule-tai-sao-nen-dung-trong-mua-dich-covid-19">
                                    <img src="<c:url value="/template/images/right-direction.png"/>"
                                         alt="logo"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="trademark trademarkV2 clearfix wow animate__backInUp" data-wow-duration="0.5s">
        <div class="container">
            <div class="trademark-listV2 owl-carousel owl-loaded">
                <a href="#"><img src="//theme.hstatic.net/1000205447/1000553611/14/logo-6.png?v=2617"
                                 alt="Home_Portfolio5"
                                 class="img-responsive"/></a>
                <a href="#"><img src="//theme.hstatic.net/1000205447/1000553611/14/logo-7.png?v=2617"
                                 alt="Home_Portfolio5"
                                 class="img-responsive"/></a>
                <a href="#"><img src="//theme.hstatic.net/1000205447/1000553611/14/logo-8.png?v=2617"
                                 alt="Home_Portfolio5"
                                 class="img-responsive"/></a>
                <a href="#"><img src="//theme.hstatic.net/1000205447/1000553611/14/logo-9.png?v=2617"
                                 alt="Home_Portfolio5"
                                 class="img-responsive"/></a>
                <a href="#"><img src="//theme.hstatic.net/1000205447/1000553611/14/logo-10.png?v=2617"
                                 alt="Home_Portfolio5"
                                 class="img-responsive"/></a>
                <a href="#"><img src="//theme.hstatic.net/1000205447/1000553611/14/logo-11.png?v=2617"
                                 alt="Home_Portfolio5"
                                 class="img-responsive"/></a>
            </div>
        </div>

    </section>

    <footer id="footerV2">
        <div class="container" style="position: relative">
            <div class="row">
                <div class="col-sm-6 col-md-3">
                    <div class="footer-contentV2">
                        <div class="footer-titleV2">
                            <h4 style="font-size: 32px;font-weight: 700">Beauty Shop</h4>
                        </div>
                        <p>Mang cả thế giới mỹ phẩm vào ngôi nhà của bạn<br>
                        </p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-6">
                    <div class="footer-titleV2">
                        <h4>Menu</h4>
                    </div>
                    <div class="list-support">
                        <a href="/trang-chu"><p>Trang chủ</p></a>
                        <a href="/page-san-pham?name=son-moi&page=1&limit=6"><p>Son môi</p></a>
                        <a href="/page-san-pham?name=kem-duong-da&page=1&limit=6"><p>Kem dưỡng da</p></a>
                        <a href="/page-san-pham?name=son-moi&page=1&limit=6"><p>Thực phẩm chức năng</p></a>
                        <br>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="footer-titleV2">
                        <h4>Follow Us On</h4>
                    </div>
                    <div class="follow-list-icon">
                        <div class="mr-icon">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <div id="bttop" style="display: block;">
                <i class="fa fa-chevron-up"></i>
            </div>
        </div>
    </footer>
</div>

<script src="<c:url value="/template/custom.js"/>" type="text/javascript"></script>
</body>
</html>
