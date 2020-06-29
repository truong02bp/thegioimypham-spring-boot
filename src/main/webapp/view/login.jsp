<%--
  Created by IntelliJ IDEA.
  User: Truong dep zai
  Date: 28/5/2020
  Time: 10:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Đăng nhập</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="<c:url value="/template/login/images/icons/favicon.ico"/>"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/template/login/vendor/bootstrap/css/bootstrap.min.css"/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/template/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<c:url value="/template/login/vendor/animate/animate.css"/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/template/login/vendor/css-hamburgers/hamburgers.min.css"/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<c:url value="/template/login/vendor/select2/select2.min.css"/>">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="<c:url value="/template/login/css/util.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/template/login/css/main.css"/>">
    <!--===============================================================================================-->
    <script src="<c:url value="/template/login/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
    <!--===============================================================================================-->
    <script src="<c:url value="/template/login/vendor/bootstrap/js/popper.js"/>"></script>
    <script src="<c:url value="/template/login/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
    <!--===============================================================================================-->
    <script src="<c:url value="/template/login/vendor/select2/select2.min.js"/>"></script>
    <!--===============================================================================================-->
    <script src="<c:url value="/template/login/vendor/tilt/tilt.jquery.min.js"/>"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--===============================================================================================-->
    <script src="<c:url value="/template/login/js/main.js"/>"></script>
    <link href="<c:url value="/template/css/animate.css"/>" rel="stylesheet">
    <script src="<c:url value="/template/script/wow.min.js"/>"></script>
    <script>
        new WOW().init();
    </script>
</head>
<body>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt wow animate__backInUp" data-tilt=""
                 style="will-change: transform; transform: perspective(300px) rotateX(0deg) rotateY(0deg);">
                <img src="<c:url value="/template/login/images/img-01.png"/>" alt="IMG">
            </div>
            <div class="login100-form validate-form wow animate__backInUp">
                <div style="display: flex">
                    <button class="active login100-form-title" id="login-button">Đăng nhập</button> / <button class="login100-form-title" id="sign-up-button">Đăng ký</button>
                </div>
                <form action="/j_spring_security_check" method="post" id="form-login">
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <input class="input100" type="text" name="username" placeholder="Tài khoản>">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100" type="password" name="password" placeholder="Mật khẩu">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                    </div>

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" type="submit">
                            Đăng nhập
                        </button>
                    </div>
                    <div class="text-center p-t-12" style="margin-bottom: 100px">
					 	<span class="txt1">
							Forgot
						</span>
                        <a class="txt2" href="#">
                            username / password ?
                        </a>
                    </div>
                </form>
                <form  name="form-sign-up" id="form-sign-up" style="display: none">
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <input class="input100" type="text" name="fullName" placeholder="Họ và tên">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <input class="input100" type="text" name="email" placeholder="Email">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <input class="input100" type="text" name="username" placeholder="Tài khoản">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100" type="password" name="password" placeholder="Mật khẩu">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100" type="password" name="password2" placeholder="Nhập lại mật khẩu">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                    </div>
                    <div class="container-login100-form-btn" style="margin-bottom: 100px">
                        <button class="login100-form-btn" id="dang-ky">
                            Đăng ký
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    $('#login-button').click(function ()
    {
        $(this).addClass("active");
        $('#sign-up-button').removeClass("active");
        $('#form-login').show();
        $('#form-sign-up').hide();
    });
    $('#sign-up-button').click(function ()
    {
        $(this).addClass("active")
        $("#login-button").removeClass("active");
        $('#form-login').hide();
        $('#form-sign-up').show();
    });
    $('#dang-ky').click(function (e)
    {
        e.preventDefault();
        let pass = document.forms["form-sign-up"]["password"].value,
            pass2 = document.forms["form-sign-up"]["password2"].value,
            email = document.forms["form-sign-up"]["email"].value;
        if (email.toString().includes("@gmail.com")==false)
            alert("Email không hợp lệ");
        else
        {
            if (pass != pass2)
                alert("Mật khẩu không trùng khớp");
            else
            {
                let data={};
                let formData = $('#form-sign-up').serializeArray();
                $.each(formData , function (i,v) {
                    if (v.name != "password2")
                        data[""+v.name+""] = v.value;
                })
                add(data);
            }
        }
    })
    function add(data)
    {
        $.ajax({
            url: "/api-user",
            type: "POST",
            contentType: 'application/json',
            data:JSON.stringify(data),
            success: function (result)
            {
                if (result == "") {
                    window.location.href = "/dang-nhap?messenge=tai-khoan-da-ton-tai";
                }
                else
                    window.location.href = "/dang-nhap?messenge=sign-up-success";
            },
            error: function () {
                window.location.href = "/dang-nhap?messenge=sign-up-fail";
            }
        })
    }
</script>
</body>
</html>
