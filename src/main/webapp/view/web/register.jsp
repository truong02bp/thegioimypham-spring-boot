<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/6/2020
  Time: 10:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Đăng ký</title>
</head>
<body>
<section class="myAcc">
    <div class="container">
        <div style="  width: calc(100% - 200px);margin: 0 auto">
            <h3>Đăng ký</h3>
            <div class="row">
                <div class="col-md-12">
                    <form:form id="formSubmit" modelAttribute="model">
                    <div class="accInput">
                        <p>Họ và tên</p>
                        <form:input type="text" cssClass="inputText" path="fullName" placeholder="Họ và tên"/>
                        <br>
                        <p>Email</p>
                        <form:input type="text" cssClass="inputText" path="email" placeholder="Email"/>
                        <br>
                        <p>Địa chỉ</p>
                        <form:input type="text" cssClass="inputText" path="address" placeholder="Địa chỉ"/>
                        <br>
                        <p>Số điện thoại</p>
                        <form:input type="text" cssClass="inputText" path="phone" placeholder="Số điện thoại"/>
                        <br>
                        <p>Tài khoản</p>
                        <form:input type="text" cssClass="inputText" path="username" placeholder="Username"/>
                        <br>
                        <p>Mật khẩu</p>
                        <form:input type="password" cssClass="inputText" path="password" placeholder="Password"/>
                        <br>
                        <button type="button" class="btn-arrival" style="    margin-top: 25px;" id="buttonSubmit">
                            <div>Đăng ký<img src="<c:url value="/template/images/arr.png"/>" alt="logo"></div>
                        </button>
                    </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    $('#buttonSubmit').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData , function (i,v)
        {
            data["" + v.name + ""] = v.value;
        })
        add(data);
    })
    function add(data)
    {
        $.ajax(
            {
                url: "/api-user",
                type: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (result) {
                    console.log(result.id);
                    window.location.href = "/dang-nhap?messenge=success_add";
                },
                error: function (result)
                {
                    window.location.href = "/dang-ky?messenge=usernameIsUsed";
                }
            }
        )
    }
</script>
</body>
</html>
