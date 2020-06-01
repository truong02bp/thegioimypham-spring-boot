<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/5/2020
  Time: 9:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>

<header id="header" class="header-serviceV2 scollView">
    <div class="home-menu">
        <nav class="navbar-core navbar-white navbar-v1 headroom headroom--not-bottom headroom--pinned headroom--top">
            <div class="s-wrapper s-wrapper-service">
                <div class="container">
                    <div class="s-inner clearfix">
                        <div class="pull-left nav-left">
                            <div class="logo">
                                <a href="/trang-chu">
                                    <img src="<c:url value="/template/images/logo.png"/>" alt="logo" class=" img-responsive">
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
                                        <a href="/trang-chu" >Trang chủ</a>
                                    </li>
                                      <li class="dropdown productMN">
                                                <a href="/" class="active-menu">Khách sạn</a>
                                                <i class="fa fa-angle-down"></i>
                                                <div class="box-menu">
                                                    <div class="row">

                                                        <div class="col-md-3 ">
                                                            <div class=" slideSort">
                                                                <h3 class="slider-left-title">Catalog</h3>
                                                                <ul class="slide-left-list">
                                                                    <li><a href="ProductGrid.html">Kitchen</a></li>
                                                                    <li><a href="ProductGrid.html">Living room</a></li>
                                                                    <li><a href="ProductGrid.html">Office</a></li>
                                                                    <li><a href="ProductGrid.html">Gadgets</a></li>
                                                                    <li><a href="ProductGrid.html">Accessories</a></li>
                                                                    <li><a href="ProductGrid.html">Tool kits</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 ">

                                                            <div class=" slideSort">
                                                                <h3 class="slider-left-title">Vui chơi giải trí</h3>
                                                                <ul class="slide-left-list">
                                                                    <li><a href="ProductGrid.html">New Product</a></li>
                                                                    <li><a href="ProductGrid.html">Most Poupular</a></li>
                                                                    <li><a href="ProductGrid.html">Top Trending</a></li>
                                                                    <li><a href="ProductGrid.html">On Sale</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 ">
                                                            <div class="box-slider-left slideNewproduct slideNewproduct2">
                                                                <h3 class="slider-left-title" style="margin-bottom: 10px">Best sellers</h3>
                                                                <div class="box-slideNewproduct">
                                                                    <div class="slideNewproduct-item slideNewproduct-img">
                                                                        <a href="SingleProduct.html"><img src="<c:url value="/template/images/Product/1P5.jpg"/>" alt="product1" class="img-responsive"></a>
                                                                    </div>
                                                                    <div class="slideNewproduct-item slideNewproduct-text">
                                                                        <h5><a href="SingleProduct.html">Trailer</a></h5>
                                                                        <p class="slideProduct-price">$32.00</p>
                                                                    </div>
                                                                </div>
                                                                <div class="box-slideNewproduct ">
                                                                    <div class="slideNewproduct-item slideNewproduct-img">
                                                                        <a href="SingleProduct.html"><img src="<c:url value="/template/images/Product/1P3.jpg"/>" alt="product1" class="img-responsive"></a>
                                                                    </div>
                                                                    <div class="slideNewproduct-item slideNewproduct-text">
                                                                        <h5><a href="SingleProduct.html">Magic Clock</a></h5>
                                                                        <p class="slideProduct-price">$32.00</p>
                                                                    </div>
                                                                </div>
                                                                <div class="box-slideNewproduct">
                                                                    <div class="slideNewproduct-item slideNewproduct-img">
                                                                        <a href="SingleProduct.html"><img src="<c:url value="/template/images/Product/1P1.jpg"/>" alt="product1" class="img-responsive"></a>
                                                                    </div>
                                                                    <div class="slideNewproduct-item slideNewproduct-text">
                                                                        <h5><a href="SingleProduct.html">Obraz Mechaniczny</a></h5>
                                                                        <p class="slideProduct-price">$32.00</p>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 ">
                                                            <h3 class="slider-left-title">Woody Store</h3>
                                                            <div  class="box-gallery">
                                                                <a href="AboutUs.html">
                                                                    <img src="<c:url value="/template/images/MN2.png"/>" alt="banner slideBar" class="img-responsive" style="width: 100%">
                                                                    <div class="arrIcon">
                                                                    </div>
                                                                </a>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="dropdown productMN">
                                                <a href="Gallery.html">Hội họp & sự kiện</a>
                                                <i class="fa fa-angle-down"></i>
                                                <div class="box-menu">
                                                    <div class="row">

                                                        <div class="col-md-3 ">
                                                            <div class=" slideSort">
                                                                <h3 class="slider-left-title">About Bussiness</h3>
                                                                <ul class="slide-left-list">
                                                                    <li><a href="Policy.html">Policy</a></li>
                                                                    <li><a href="FAQ.html">FAQ</a></li>
                                                                    <li><a href="Policy.html">Term & Conditions</a></li>
                                                                    <li><a href="Policy.html">Private Policy</a></li>
                                                                    <li><a href="Policy.html">Term of User</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 ">

                                                            <div class=" slideSort">
                                                                <h3 class="slider-left-title">Other link</h3>
                                                                <ul class="slide-left-list">
                                                                    <li><a href="Blogs.html">Blogs</a></li>
                                                                    <li><a href="Gallery.html">Gallery</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 ">
                                                            <div class="box-slider-left slideNewproduct slideNewproduct2">
                                                                <h3 class="slider-left-title" style="margin-bottom: 10px">Recent news</h3>
                                                                <div class="box-slideNewproduct">
                                                                    <div class="slideNewproduct-item slideNewproduct-img">
                                                                        <a href="BlogSingle.html"><img src="<c:url value="/template/images/recen1.png"/>" alt="product1" class="img-responsive"></a>
                                                                    </div>
                                                                    <div class="slideNewproduct-item slideNewproduct-text">
                                                                        <h5><a href="BlogSingle.html" style="font-size: 12px;color: #a8a8a8">Jul 19,2019 / 4 Comments</a></h5>
                                                                        <p class="slideProduct-price" style="font-size: 16px;margin-top: 0;">Waxy latest also use</p>
                                                                    </div>
                                                                </div>
                                                                <div class="box-slideNewproduct ">
                                                                    <div class="slideNewproduct-item slideNewproduct-img">
                                                                        <a href="BlogSingle.html"><img src="<c:url value="/template/images/recen2.png"/>" alt="product1" class="img-responsive"></a>
                                                                    </div>
                                                                    <div class="slideNewproduct-item slideNewproduct-text">
                                                                        <h5><a href="BlogSingle.html" style="font-size: 12px;color: #a8a8a8">Jun 26 , 2019 / 15 Comments</a></h5>
                                                                        <p class="slideProduct-price" style="font-size: 16px;margin-top: 0;">Decorating your home</p>
                                                                    </div>
                                                                </div>
                                                                <div class="box-slideNewproduct">
                                                                    <div class="slideNewproduct-item slideNewproduct-img">
                                                                        <a href="BlogSingle.html"><img src="<c:url value="/template/images/recen3.png"/>" alt="product1" class="img-responsive"></a>
                                                                    </div>
                                                                    <div class="slideNewproduct-item slideNewproduct-text">
                                                                        <h5><a href="BlogSingle.html" style="font-size: 12px;color: #a8a8a8">Feb 12, 2019 / 8 Comments</a></h5>
                                                                        <p class="slideProduct-price" style="font-size: 16px;margin-top: 0;">Wood in your house</p>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-3 ">
                                                            <h3 class="slider-left-title">Our Gallery</h3>
                                                            <div style="position: relative">
                                                                <a href="Gallery.html" class="abbr">
                                                                    <img style=" width: 100%;" src="<c:url value="/template/images/MN1.png"/>" alt="banner slideBar" class="img-responsive">
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                    <li class="dropdown">
                                        <a href="AboutUs.html">Ưu đãi</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="Contact.html">Tin tức</a>
                                    </li>
                                </ul>
                            </div>
                            <button type="button" class="btn btn-warning">ĐẶT NGAY</button>
                        </div>

                    </div>
                </div>
            </div>
        </nav>
    </div>
</header>
