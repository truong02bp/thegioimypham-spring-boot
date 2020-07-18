<%--
  Created by IntelliJ IDEA.
  User: truong02_bp
  Date: 03/07/2020
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Danh sách hóa đơn</title>
</head>
<body>
<div class="main-content">
    <form action="/admin-list/user" method="get" id="formSubmit">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Họ và tên</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Ghi chú</th>
                <th scope="col">Số điện thoại</th>
                <th scope="col">Tên sản phẩm</th>
                <th scope="col">Số lượng</th>
                <th scope="col">Thành tiền</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="bill" items="${model.list}">
                <tr>
                    <td>${bill.id}</td>
                    <td>${bill.fullName}</td>
                    <td>${bill.address}</td>
                    <td>${bill.note}</td>
                    <td>${bill.phone}</td>
                    <td>
                        <c:forEach var="item" items="${bill.items}">
                            <p>${item.name}</p>
                            <br>
                        </c:forEach>
                    </td>
                    <td>
                        <c:forEach var="item" items="${bill.items}">
                            <p>${item.quantity}</p>
                            <br>
                        </c:forEach>
                    </td>
                    <td>
                        ${bill.price}
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <center>
            <ul class="pagination" id="pagination"></ul>
        </center>
        <input type="hidden" name="page" id="page">
        <input type="hidden" name="limit" id="limit">
    </form>
</div>
<script type="text/javascript">
    var currentPage = ${model.page};
    var totalPage = ${model.totalPage};
    var limit = ${model.limit};
    $(function () {
        window.pagObj = $('#pagination').twbsPagination(
            {
                startPage: currentPage,
                totalPages: totalPage,
                visiblePages: 3,
                onPageClick: function (event, page) {
                    if (currentPage != page) {
                        $('#page').val(page);
                        $('#limit').val(limit);
                        $('#formSubmit').submit();
                    }
                }
            }
        ).on('page', function (event, page) {
            console.info(page + ' (from event listening)');
        });
    })
</script>
</body>
</html>
