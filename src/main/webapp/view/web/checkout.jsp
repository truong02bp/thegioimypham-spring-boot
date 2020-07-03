<%--
  Created by IntelliJ IDEA.
  User: truong02_bp
  Date: 25/06/2020
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Thanh toán</title>
</head>
<body>
<section class="myAcc myAcc2">
    <div class="container">
        <h4 class="haveCoupon">Bạn có mã giảm giá <a href="/trang-chu">Click vào đây để nhập</a></h4>
        <form:form id="formSubmit" modelAttribute="model">
            <div class="row">
                <div class="col-md-8">
                    <h3 style="margin-bottom: 30px;text-align: left">Thông tin khách hàng</h3>
                    <p style=" position: absolute;
    right: 19px;
    top: 4px;
    font-size: 16px;
    color: #000;" class="use-default"><i class="la la-map-o"></i> Sử dụng địa chỉ mặc định
                    </p>
                    <div class="accInput">
                        <p>Họ và tên</p>
                        <form:input path="fullname" cssClass="inputText" placeholder="Họ và tên "/>
                    </div>
                    <div class="accInput">
                        <p>Địa chỉ </p>
                        <form:input path="address" cssClass="inputText" placeholder="Địa chỉ"/>
                    </div>
                    <div class="accInput">
                        <p>Số điện thoại </p>
                        <form:input path="phone" class="inputText" placeholder="Số điện thoại"/>
                    </div>
                    <a href="/check-out" style="" class="trash">
                        <div style="font-size: 16px;float: right;"><i class="la la-trash"></i>Xóa tất cả</div>
                    </a>
                    <h3 style="margin-bottom: 30px;text-align: left; margin-top: 100px;">Thông tin thêm</h3>
                    <div class="accInput">
                        <p>Ghi chú</p>
                        <form:input path="note" cssClass="inputText"
                               placeholder="Ghi chú"/>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-tax">
                        <h4>Các mặt hàng</h4>
                        <div class="lineAbout" style="width: 100%;height: 1px; margin-top: 20px;"></div>
                        <div class="box-formTax-content">
                            <c:forEach var="item" items="${sessionScope.carts.values()}">
                                <div class="row">
                                    <div class="col-md-5">${item.itemDto.name}</div>
                                    <div class="col-md-3" style="text-align: center;">${item.soLuong}</div>
                                    <div class="col-md-4 cart-price" style="text-align: right;">${item.price}</div>
                                </div>
                            </c:forEach>
                        </div>
                        <div class="lineAbout" style="width: 100%;height: 1px; margin-top: 20px;"></div>

                        <div class="box-formTax-count">
                            <div class="row">
                                <div class="col-md-6">Giá tiền:</div>
                                <div class="col-md-6 totalPrice" style="text-align: right;">$13,074</div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">VAT:</div>
                                <div class="col-md-6 vat-price" style="text-align: right;">-10%</div>
                            </div>
                        </div>
                        <div class="lineAbout" style="width: 100%;height: 1px; margin-top: 20px;"></div>

                        <div class="box-formTax-total">
                            <div class="row">
                                <div class="col-md-6" style="font-size: 18px;font-weight: bold">Total</div>
                                <div class="col-md-6 last-price"
                                     style="text-align: right;font-size: 18px;font-weight: bold">$11,000
                                </div>
                            </div>
                        </div>
                        <div class="btn-formTax dat-hang">
                            <div>Đặt hàng</div>
                        </div>
                    </div>
                </div>
            </div>
        </form:form>
    </div>
</section>
<script src="/template/custom.js" type="text/javascript"></script>
</body>
</html>