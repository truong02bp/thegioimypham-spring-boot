<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: truong02_bp
  Date: 11/06/2020
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Danh sách người dùng</title>
</head>
<body>
<div class="main-content">
    <form action="/admin-list/user" method="get" id="formSubmit">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Họ và tên</th>
                <th scope="col">Tài khoản</th>
                <th scope="col">Địa chỉ</th>
                <th scope="col">Số điện thoại</th>
                <th scope="col">Email</th>
                <th scope="col">Chức vụ</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${model.list}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.fullName}</td>
                    <td>${user.username}</td>
                    <td>${user.address}</td>
                    <td>${user.phone}</td>
                    <td>${user.email}</td>
                    <td>
                        <c:forEach var="role" items="${user.roles}">
                            <p>${role.name} </p>
                        </c:forEach>
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
