<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/5/2020
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Product</title>
</head>
<body>
<section style="margin-top: 100px;margin-bottom: 50px;">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div style="max-width: 470px">
                    <div class="image-preview-container">
                        <!-- - - - - - - - - - - - - - Image Preview Container - - - - - - - - - - - - - - - - -->
                        <div class="image-preview">
                            <a href="<c:url value="/template/images/SingleProduct/Group 1059.png"/>"
                               data-zoom-image="<c:url value="/template/images/SingleProduct/Group 1059.png"/>" data-fancybox="group">
                                <img id="zoom-image" src="<c:url value="/template/images/SingleProduct/Group 1059.png"/>" alt="">
                            </a>
                        </div>
                        <!--/ .image-preview-->
                        <!-- - - - - - - - - - - - - - End of Image Preview Container - - - - - - - - - - - - - - - - -->
                        <!-- - - - - - - - - - - - - - Thumbnails - - - - - - - - - - - - - - - - -->
                        <div class="carousel-type-2">
                            <div class="owl-carousel type-small product-thumbs" id="thumbnails" data-max-items="4">
                                <a class="active" href="#" data-image="<c:url value="/template/images/SingleProduct/Group 1059.png"/>"
                                   data-zoom-image="<c:url value="/template/images/SingleProduct/Group 1059.png"/>">
                                    <img src="<c:url value="/template/images/SingleProduct/Tractor-photo-3-897x897.png"/>" alt="">
                                </a>
                                <a href="<c:url value="/template/images/SingleProduct/Group 1062.png"/>"
                                   data-image="<c:url value="/template/images/SingleProduct/Group 1062.png"/>"
                                   data-zoom-image="<c:url value="/template/images/SingleProduct/Group 1062.png"/>" data-fancybox="group">
                                    <img src="<c:url value="/template/images/SingleProduct/Image 16.png"/>" alt="">
                                </a>
                                <a href="<c:url value="/template/images/SingleProduct/Group 1060.png"/>"
                                   data-image="<c:url value="/template/images/SingleProduct/Group 1060.png"/>"
                                   data-zoom-image="<c:url value="/template/images/SingleProduct/Group 1060.png"/>" data-fancybox="group">
                                    <img src="<c:url value="/template/images/SingleProduct/Image 17.png"/>" alt="">
                                </a>
                                <a href="<c:url value="/template/images/SingleProduct/Group 1061.png"/>"
                                   data-image="<c:url value="/template/images/SingleProduct/Group 1061.png"/>"
                                   data-zoom-image="<c:url value="/template/images/SingleProduct/Group 1061.png"/>" data-fancybox="group">
                                    <img src="<c:url value="/template/images/SingleProduct/Image 18.png"/>" alt="">
                                </a>
                            </div>
                        </div>
                        <!-- - - - - - - - - - - - - - End of Thumbnails - - - - - - - - - - - - - - - - -->
                    </div>
                    <!--/ .image-preview-container -->
                </div>
            </div>
            <div class="col-md-6  clearfix">
                <div class="mid-product-content media-body">
                    <h3 style="font-size: 35px">Truck</h3>
                    <p style="color: #000">In Stock - SKU: 60354</p>
                    <div class="notable clearfix">
                        <ul>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star"></i></li>
                            <li><i class="fa fa-star-o"></i></li>
                        </ul>
                        <p>(4 Customer reviews)</p>
                    </div><!--/notable-->
                    <div class="details-desc" style="margin-top: 0">
                        <p>It has survived not only five centuries, but also the leap into electronic
                            typesetting, remaining essentially unchanged. It was popularised in the
                            1960s with the release of Letraset sheets containing</p>
                    </div>
                    <span class="details-price"> $ 59.99</span>
                    <div class="lineAbout" style="width: 100%;height: 1px"></div>

                    <div class="details-button clearfix" style="margin-bottom: 0">
                        <div style="width: 50%;float: left">
                            <h3>Quantity</h3>
                            <div class="pd-c-quantity quantity details-next">
                                <input type="number" min="1" max="100" step="1" value="1">
                                <div class="quantity-button quantity-down">
                                    <span class="step-next"><i class="la la-angle-down"></i></span>
                                </div>
                                <div class="quantity-button quantity-up">
                                    <span class="step-next"><i class="la la-angle-up"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar-filter-color" style="width: 50%;float: left">
                            <h3>Color</h3>
                            <ul>
                                <li class="tooltip" style="background: #ffd098;">
                                    <span class="tooltiptext">Tooltip text</span>
                                </li>
                                <li class="tooltip" style="background: #f7bb66;">
                                    <span class="tooltiptext">Tooltip text 1</span>

                                </li>
                                <li class="tooltip" style="background: #af793a;">
                                    <span class="tooltiptext">Tooltip text 2</span>

                                </li>
                                <li class="tooltip" style="background: #b75a20;">
                                    <span class="tooltiptext">Tooltip text 3</span>

                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="lineAbout" style="width: 100%;height: 1px;    margin-top: 15px;"></div>
                    <div class="addCart">
                        <ul>
                            <li>
                                <button class="button btn-hover btn-details">ADD TO CARD <i class="la la-shopping-cart" style="font-size: 20px;position: relative;top: 2px;"></i></button>
                            </li>
                            <li style="margin-left: 40px;">
                                <i class="la la-heart-o" style="font-size: 20px;position: relative;top: 2px;"></i>  Add to wishlist
                            </li>
                        </ul>
                    </div>
                    <div class="category_tag" style="margin-top: 20px">

                        <div class="share-link tags" >
                            <p class="tags-item">Share on:</p>
                            <ul class="sku-nd">
                                <li><a href="#" title=""><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" title=""><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" title=""><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#" title=""><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div><!--/share-link-->
                        <div class="category tags">
                            <p class="tags-item">Category: </p>
                            <span><a href="#" class="sku-nd" style="font-size: 12px">Uncategorized</a></span>
                        </div><!--/category-->
                    </div><!--/category_tag-->
                </div><!--/mid-product-content-->
            </div>

        </div>
    </div>
</section>
<section class="tabProduct">
    <div class="container">
        <div class="menuTabPro">
            <ul class="">
                <li class="active"><a data-toggle="tab" href="#home">Description</a></li>
                <li>|</li>
                <li><a data-toggle="tab" href="#menu1">Additional Information</a></li>
                <li>|</li>

                <li><a data-toggle="tab" href="#menu2">Product reviews</a></li>
            </ul>
        </div>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active tabProText">
                <p>
                    Embodying the raw, wayward spirit of rock ‘n’ roll, the Kilburn portable active stereo speaker takes
                    the unmistakable look and sound of Marshall, unplugs the chords, and takes the show on the road.
                </p>
                <p>
                    Weighing in under 7 pounds, the Kilburn is a lightweight piece of vintage styled engineering. Setting the
                    bar as one of the loudest speakers in its class, the Kilburn is a compact, stout-hearted hero with a well-
                    balanced audio which boasts a clear midrange and extended highs for a sound that is both articulate
                    and pronounced. The analogue knobs allow you to fine tune the controls to your personal preferences
                    while the guitar-influenced leather strap enables easy and stylish travel.
                </p>
            </div>
            <div id="menu1" class="tab-pane fade tabProText">
                <p>
                    Embodying the raw, wayward spirit of rock ‘n’ roll, the Kilburn portable active stereo speaker takes
                    the unmistakable look and sound of Marshall, unplugs the chords, and takes the show on the road.
                </p>
                <p>
                    Weighing in under 7 pounds, the Kilburn is a lightweight piece of vintage styled engineering. Setting the
                    bar as one of the loudest speakers in its class, the Kilburn is a compact, stout-hearted hero with a well-
                    balanced audio which boasts a clear midrange and extended highs for a sound that is both articulate
                    and pronounced. The analogue knobs allow you to fine tune the controls to your personal preferences
                    while the guitar-influenced leather strap enables easy and stylish travel.
                </p>
            </div>
            <div id="menu2" class="tab-pane fade tabProText">
                <p>
                    Embodying the raw, wayward spirit of rock ‘n’ roll, the Kilburn portable active stereo speaker takes
                    the unmistakable look and sound of Marshall, unplugs the chords, and takes the show on the road.
                </p>
                <p>
                    Weighing in under 7 pounds, the Kilburn is a lightweight piece of vintage styled engineering. Setting the
                    bar as one of the loudest speakers in its class, the Kilburn is a compact, stout-hearted hero with a well-
                    balanced audio which boasts a clear midrange and extended highs for a sound that is both articulate
                    and pronounced. The analogue knobs allow you to fine tune the controls to your personal preferences
                    while the guitar-influenced leather strap enables easy and stylish travel.
                </p>
            </div>

        </div>
    </div>
</section>
<section class="page-shop-slidebar" style="    padding-top: 60px;">
    <div class="container">
        <div class="text-center">
            <h3>Related products</h3>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="productG ">
                    <div class="sizeImg" style="width: 100%;float: none">
                        <img src="<c:url value="/template/images/Product/2S1.png"/>" alt="product1" class="img-responsive"/>
                        <div class="arrIcon"></div>
                        <div class="box-posi">HOT</div>
                        <div class="arrIcon2">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="la la-shopping-cart"></i>
                                    </a>
                                </li>
                                <li style="margin-left: 6px;margin-right: 6px;">
                                    <a href="SingleProduct.html">
                                        <i class="la la-eye"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="la la-heart-o"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="sizeImgCalc" style="width: 100%;float: none;padding-left: 0;padding-bottom: 7px;">
                        <h3>Truck</h3>
                        <h4>$260.00</h4>

                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="productG ">
                    <div class="sizeImg" style="width: 100%;float: none">
                        <img src="<c:url value="/template/images/Product/2S2.png"/>" alt="product1" class="img-responsive"/>
                        <div class="arrIcon"></div>
                        <div class="box-posi">HOT</div>
                        <div class="arrIcon2">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="la la-shopping-cart"></i>
                                    </a>
                                </li>
                                <li style="margin-left: 6px;margin-right: 6px;">
                                    <a href="SingleProduct.html">
                                        <i class="la la-eye"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="la la-heart-o"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="sizeImgCalc" style="width: 100%;float: none;padding-left: 0;padding-bottom: 7px;">
                        <h3>Truck</h3>
                        <h4>$260.00</h4>

                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="productG ">
                    <div class="sizeImg" style="width: 100%;float: none">
                        <img src="<c:url value="/template/images/Product/2S4.png"/>" alt="product1" class="img-responsive"/>
                        <div class="arrIcon"></div>
                        <div class="box-posi">HOT</div>
                        <div class="arrIcon2">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="la la-shopping-cart"></i>
                                    </a>
                                </li>
                                <li style="margin-left: 6px;margin-right: 6px;">
                                    <a href="SingleProduct.html">
                                        <i class="la la-eye"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="la la-heart-o"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="sizeImgCalc" style="width: 100%;float: none;padding-left: 0;padding-bottom: 7px;">
                        <h3>Truck</h3>
                        <h4>$260.00</h4>

                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="productG ">
                    <div class="sizeImg" style="width: 100%;float: none">
                        <img src="<c:url value="/template/images/Product/2S1.png"/>" alt="product1" class="img-responsive"/>
                        <div class="arrIcon"></div>
                        <div class="box-posi">HOT</div>
                        <div class="arrIcon2">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="la la-shopping-cart"></i>
                                    </a>
                                </li>
                                <li style="margin-left: 6px;margin-right: 6px;">
                                    <a href="SingleProduct.html">
                                        <i class="la la-eye"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="la la-heart-o"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="sizeImgCalc" style="width: 100%;float: none;padding-left: 0;padding-bottom: 7px;">
                        <h3>Truck</h3>
                        <h4>$260.00</h4>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
