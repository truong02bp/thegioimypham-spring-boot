
<%--
  Created by IntelliJ IDEA.
  User: truong02_bp
  Date: 11/06/2020
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Danh sách sản phẩm </title>
</head>
<body>
<div class="main-content">
    <form action="/admin-list/item" method="get" id="formSubmit">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="item" items="${model.list}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
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
                        $('#limit').val(6);
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
