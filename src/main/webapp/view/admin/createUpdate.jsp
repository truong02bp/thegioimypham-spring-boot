<%--
  Created by IntelliJ IDEA.
  User: truong02_bp
  Date: 13/06/2020
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>id
<head>
    <title><c:if test="${empty model.id}">
        Thêm sản phẩm
    </c:if>
        <c:if test="${not empty model.id}">
            Cập nhật sản phẩm
        </c:if>
    </title>
</head>
<body>
<div class="main-content">
    <form:form modelAttribute="model" id="formSubmit">
        <div class="form-group">
            <label for="name">Tên sản phẩm</label>
            <form:input path="name" id="name" cssClass="form-control"/>
            <label for="code">Mã sản phẩm</label>
            <form:input path="code" id="code" cssClass="form-control"/>
            <label for="categoryName">Mã sản phẩm</label>
            <form:select path="categoryName" id="categoryName" cssClass="form-control">
                <c:if test="${empty model.id}">
                    <form:option value="" label="Loại sản phẩm"/>
                </c:if>
                <form:options items="${categories}"/>
            </form:select>
            <form:hidden path="id"/>
            <label for="link">Link</label>
            <form:input path="link" id="link" cssClass="form-control"/>
            <label for="web">Web</label>
            <form:input path="web" id="web" cssClass="form-control"/>
            <label for="sale">Sale</label>
            <form:input path="sale" id="sale" cssClass="form-control"/>
            <label for="giaTruoc">Giá trước</label>
            <form:input path="giaTruoc" id="giaTruoc" cssClass="form-control"/>
            <label for="giaSau">Giá sau</label>
            <form:input path="giaSau" id="giaSau" cssClass="form-control"/>
            <label for="khuyenmai">Khuyến mại</label>
            <form:textarea path="khuyenmai" id="khuyenmai" rows="10" cols="50" cssClass="form-control"/>
            <label for="shortDescription">Mô tả ngắn</label>
            <form:textarea path="shortDescription" id="shortDescription" rows="10" cols="50" cssClass="form-control"/>
            <label for="content">Nội dung</label>
            <form:textarea path="content" id="content" rows="10" cols="50" cssClass="form-control"/>
        </div>
        <c:if test="${not empty model.id}">
            <button type="button" class="btn btn-primary" id="updateOrAdd">Cập nhật</button>
        </c:if>
        <c:if test="${empty model.id}">
            <button type="button" class="btn btn-primary" id="updateOrAdd">Thêm sản phẩm</button>
        </c:if>
    </form:form>
</div>
<script>
    var editor1 = '', editor2 = '', editor3 = '';
    $(document).ready(function () {
        editor1 = CKEDITOR.replace('khuyenmai');
        editor2 = CKEDITOR.replace('shortDescription');
        editor3 = CKEDITOR.replace('content');
    })
    $('#updateOrAdd').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        })
        data["khuyenmai"] = editor1.getData();
        data["shortDescription"] = editor2.getData();
        data["content"] = editor3.getData();
        if (${not empty model.id})
            updateItem(data);
        else
            addItem(data);
    })

    function addItem(data) {
        $.ajax({
                url: "/api-item",
                type: "POST",
                contentType: 'application/json',
                data: JSON.stringify(data),
                success: function (result) {
                    window.location.href = "/admin-list/item?page=1&limit=6&messenge=add_success";
                },
                error: function (error) {
                    window.location.href = "/admin-item/chinh-sua?messenge=add_fail";
                    console.log(error);
                }
            }
        )
    }

    function updateItem(data)
    {
        $.ajax({
            url: "/api-item",
            type: "PUT",
            contentType: 'application/json',
            data: JSON.stringify(data),
            success: function (result) {
                window.location.href = "/admin-list/item?page=1&limit=6&messenge=update_success";
            },
            error: function (error) {
                window.location.href = "/admin-item/chinh-sua?messenge="+error;
            }
        })
    }
</script>
</body>
</html>
