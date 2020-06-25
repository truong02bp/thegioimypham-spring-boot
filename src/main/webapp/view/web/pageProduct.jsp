<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/5/2020
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>${model.categoryName}</title>
    <script src="<c:url value='/template/assets/js/jquery-2.1.4.min.js'/>"></script>
    <script src="<c:url value='/template/paging/jquery.twbsPagination.js'/>" type="text/javascript"></script>
</head>
<body>
<section class="page-shop-slidebar" style="    padding-top: 60px;">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-push-3">
                <form action="/page-san-pham?name=${model.categoryCode}&page=${model.page}&limit=${model.limit}"
                      id="formSubmit" method="GET">
                    <h3 style="font-size: 18px;font-weight: bold;margin-top: 30px;margin-bottom: 10px">Sản phẩm của
                        chúng tôi</h3>
                    <div class="box-fitter clearfix">
                        <div class="box-fitter-right">
                            <ul>
                                <li>Sắp xếp theo :</li>
                                <li>
                                    <div class="dropdown filterDrop">
                                        <a class=" dropdown-toggle" type="button" data-toggle="dropdown"
                                           aria-expanded="true">
                                            <c:if test="${sort == ''}">
                                                Giá thành
                                            </c:if>
                                            <c:if test="${sort == 'asc'}">
                                                Giá tăng dần
                                            </c:if>
                                            <c:if test="${sort == 'desc'}">
                                                Giá giảm dần
                                            </c:if>
                                            <span class="fa fa-angle-down"></span>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="/page-san-pham?name=${model.categoryCode}&page=1&limit=9&sort=asc">Giá
                                                    tăng dần</a></li>
                                            <li>
                                                <a href="/page-san-pham?name=${model.categoryCode}&page=1&limit=9&sort=desc">Giá
                                                    giảm dần</a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach var="item" items="${model.list}">
                            <div class="col-md-4 wow animate__backInUp" data-wow-duration="0.5s">
                                <div class="productG">
                                    <div class="sizeImg" style="width: 100%;float: none">
                                        <img src="<c:url value="/template/images/${item.code}.jpg"/>" alt="product1"
                                             class="img-responsive" style="height: 240px;width: 270px"/>
                                        <div class="arrIcon"></div>
                                        <c:if test="${item.sale == 0}">
                                            <div class="box-posi">HOT</div>
                                        </c:if>
                                        <c:if test="${item.sale != 0}">
                                            <div class="box-posi">-${item.sale}%</div>
                                        </c:if>
                                        <div class="arrIcon2">

                                            <ul>
                                                <c:if test="${item.web == 'accesstrade'}">
                                                    <li>
                                                        <div class="cart-button" data-id="${item.id}">
                                                            <i class="la la-shopping-cart"></i>
                                                        </div>
                                                    </li>
                                                    <li style="margin-left: 6px;margin-right: 6px;">
                                                        <a href="${item.link}">

                                                            <i class="la la-eye"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="${item.link}">

                                                            <i class="la la-heart-o"></i>
                                                        </a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${item.web == 'adflex'}">
                                                <li style="margin-left: 6px;margin-right: 6px;">
                                                    <a href="/san-pham?id=${item.id}&name=${item.code}">
                                                        <i class="la la-eye"></i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="/san-pham?id=${item.id}&name=${item.code}">

                                                        <i class="la la-heart-o"></i>
                                                    </a>
                                                    </c:if>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="product-text clearfix">
                                        <div class="product-left pull-left"
                                             style="padding-top: 20px;padding-bottom: 15px;">
                                            <div class="product-name">
                                                <h4 class="product-title">
                                                    <c:if test="${item.web == 'adflex'}">
                                                        <a href="/san-pham?id=${item.id}&name=${item.code}">
                                                            <h4>${item.name}</h4>
                                                        </a>
                                                    </c:if>
                                                    <c:if test="${item.web == 'accesstrade'}">
                                                        <a href="${item.link}">
                                                            <h4>${item.name}</h4>
                                                        </a>
                                                    </c:if>
                                                </h4>
                                            </div>
                                            <div class="product-price">
                                                <c:if test="${item.sale != 0}">
                                                    <span class="price1"> ${item.giaTruoc}</span>
                                                </c:if>
                                                <span class="price">${item.giaSau}</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <center>
                        <ul class="pagination" id="pagination"></ul>
                    </center>
                    <input type="hidden" name="page" id="page">
                    <input type="hidden" name="limit" id="limit">
                    <input type="hidden" name="name" id="name">
                </form>
            </div>
            <div class="col-md-3 col-md-pull-9">

                <div class=" slideSort">
                    <h3 class="slider-left-title">Trang điểm</h3>
                    <ul class="slide-left-list">
                        <li><a href="/page-san-pham?name=son-moi&page=1&limit=9">Son môi</a></li>
                        <li><a href="/page-san-pham?name=son-duong&page=1&limit=9">Son dưỡng</a></li>
                        <li><a href="/page-san-pham?name=mascara&page=1&limit=9">Mascara</a></li>
                        <li><a href="/page-san-pham?name=kem-phan&page=1&limit=9">Kem phủ - phấn</a></li>
                    </ul>
                </div>
                <div class="lineAbout" style="width: 100%;height: 1px"></div>
                <div class=" slideSort">
                    <h3 class="slider-left-title">Chăm sóc da</h3>
                    <ul class="slide-left-list">
                        <li><a href="/page-san-pham?name=kem-duong-da&page=1&limit=9">Kem dưỡng trắng da</a></li>
                        <li><a href="/page-san-pham?name=sua-rua-mat&page=1&limit=9">Sữa rửa mặt</a></li>
                        <li><a href="/page-san-pham?name=mat-na&page=1&limit=9">Mặt nạ dưỡng da</a></li>
                        <li><a href="/page-san-pham?name=tay-trang&page=1&limit=9">Tẩy trang</a></li>
                    </ul>
                </div>
                <div class="lineAbout" style="width: 100%;height: 1px"></div>
                <div class="sidebar-filter-color">
                    <h3 class="slider-left-title">CATALOG</h3>
                    <h3 class="slider-left-title" style="font-size: 16px;margin-top: 15px;margin-bottom: 15px;">
                        PRICE</h3>
                    <div class="sidebar-box">
                        <div class="custom-checkbox">
                            <div class="btn-group style-checkbox" data-toggle="buttons">
                                <label class="btn btn-success default">
                                    <input type="checkbox" checked="">
                                    <span class="glyphicon glyphicon-ok"></span>
                                </label>
                            </div>
                            <p>Under 10$</p>
                        </div>
                        <div class="custom-checkbox">
                            <div class="btn-group style-checkbox" data-toggle="buttons">
                                <label class="btn btn-success default">
                                    <input type="checkbox" checked="">
                                    <span class="glyphicon glyphicon-ok"></span>
                                </label>
                            </div>
                            <p>$10-$20</p>
                        </div>
                        <div class="custom-checkbox">
                            <div class="btn-group style-checkbox" data-toggle="buttons">
                                <label class="btn btn-success default">
                                    <input type="checkbox" checked="">
                                    <span class="glyphicon glyphicon-ok"></span>
                                </label>
                            </div>
                            <p>$20-$30</p>
                        </div>
                        <div class="custom-checkbox">
                            <div class="btn-group style-checkbox" data-toggle="buttons">
                                <label class="btn btn-success default">
                                    <input type="checkbox" checked="">
                                    <span class="glyphicon glyphicon-ok"></span>
                                </label>
                            </div>
                            <p>$30-$40</p>
                        </div>
                        <div class="custom-checkbox">
                            <div class="btn-group style-checkbox" data-toggle="buttons">
                                <label class="btn btn-success default">
                                    <input type="checkbox" checked="">
                                    <span class="glyphicon glyphicon-ok"></span>
                                </label>
                            </div>
                            <p>Above $40</p>
                        </div>

                    </div>
                </div>
                <div class="lineAbout" style="width: 100%;height: 1px"></div>
                <div class="box-slider-left slideNewproduct slideNewproduct2">
                    <h3 class="slider-left-title">Sản phẩm bán chạy</h3>
                    <div class="box-slideNewproduct">
                        <div class="slideNewproduct-item slideNewproduct-img">
                            <a href="/san-pham?id=18&name=22again-vn"><img
                                    src="<c:url value="/template/images/22again-vn.jpg"/>"
                                    alt="product1"
                                    class="img-responsive"/></a>
                        </div>
                        <div class="slideNewproduct-item slideNewproduct-text">
                            <h5><a href="/san-pham?id=18&name=22again-vn">Kem chống lão hòa 22again</a></h5>
                            <p class="slideProduct-price">790,000 đ</p>
                        </div>
                    </div>
                    <div class="box-slideNewproduct ">
                        <div class="slideNewproduct-item slideNewproduct-img">
                            <a href="/san-pham?id=21&name=gluwhite-vn"><img
                                    src="<c:url value="/template/images/gluwhite-vn.jpg"/>"
                                    alt="product1"
                                    class="img-responsive"/></a>
                        </div>
                        <div class="slideNewproduct-item slideNewproduct-text">
                            <h5><a href="/san-pham?id=21&name=gluwhite-vn">Viên sủi trắng da Gluwhite</a></h5>
                            <p class="slideProduct-price">890,000 đ</p>
                        </div>
                    </div>
                    <div class="box-slideNewproduct">
                        <div class="slideNewproduct-item slideNewproduct-img">
                            <a href="/san-pham?id=23&name=lefery-vn"><img
                                    src="<c:url value="/template/images/lefery-vn.jpg"/>"
                                    alt="product1"
                                    class="img-responsive"/></a>
                        </div>
                        <div class="slideNewproduct-item slideNewproduct-text">
                            <h5><a href="/san-pham?id=23&name=lefery-vn">Kem dưỡng da Lefery</a></h5>
                            <p class="slideProduct-price">590,000 đ</p>
                        </div>
                    </div>
                    <div class="box-slideNewproduct">
                        <div class="slideNewproduct-item slideNewproduct-img">
                            <a href="/san-pham?id=20&name=dakami-vn"><img
                                    src="<c:url value="/template/images/dakami-vn.jpg"/>"
                                    alt="product1"
                                    class="img-responsive"/></a>
                        </div>
                        <div class="slideNewproduct-item slideNewproduct-text">
                            <h5><a href="/san-pham?id=20&name=dakami-vn">Kem chống lão hóa Dakami</a></h5>
                            <p class="slideProduct-price">790,000 đ</p>
                        </div>
                    </div>
                    <div class="box-slideNewproduct">
                        <div class="slideNewproduct-item slideNewproduct-img">
                            <a href="/san-pham?id=22&name=fedora-vn"><img
                                    src="<c:url value="/template/images/fedora-vn.jpg"/>"
                                    alt="product1"
                                    class="img-responsive"/></a>
                        </div>
                        <div class="slideNewproduct-item slideNewproduct-text">
                            <h5><a href="/san-pham?id=22&name=fedora-vn">Kem chống lão hóa Fedora</a></h5>
                            <p class="slideProduct-price">790,000 đ</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<script src="<c:url value="/template/assets/js/jquery.min.map"/>"></script>
<script type="text/javascript">
    $('#pagination').find("li.first").remove();
    $('#pagination').find("li.last").remove();
    var totalPage = ${model.totalPage};
    var currentPage = ${model.page};
    var limit = ${model.limit};
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            startPage: currentPage,
            visiblePages: 3,
            totalPages: totalPage,
            onPageClick: function (event, page) {
                if (currentPage != page) {
                    $('#page').val(page);
                    $('#name').val("${model.categoryCode}");
                    $('#limit').val(6);
                    $('#formSubmit').submit();
                }
            }
        }).on('page', function (event, page) {
            console.info(page + ' (from event listening)');
        });
    });
</script>
<script src="<c:url value="/template/custom.js"/>" type="text/javascript"></script>
</body>
</html>
