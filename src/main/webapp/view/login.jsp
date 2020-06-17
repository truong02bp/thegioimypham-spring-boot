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
</head>
<body>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt=""
                 style="will-change: transform; transform: perspective(300px) rotateX(0deg) rotateY(0deg);">
                <img src="<c:url value="/template/login/images/img-01.png"/>" alt="IMG">
            </div>
            <div class="login100-form validate-form">
                <div style="display: flex">
                    <span class="login100-form-title" id="login">Đăng nhập</span> / <span class="login100-form-title" id="sign-up">Đăng ký</span>
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
                <form action="/j_spring_security_check" method="post" id="form-sign-up" style="display: none">
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <input class="input100" type="text" name="email" placeholder="Email">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
                    </div>
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

                    <div class="container-login100-form-btn" style="margin-bottom: 100px">
                        <button class="login100-form-btn" type="submit">
                            Đăng ký
                        </button>
                    </div>
                </form>
            </div>
            <%--            <form action="/j_spring_security_check" class="login100-form validate-form" method="post" id="form-login">--%>
            <%--                <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">--%>
            <%--                    <input class="input100" type="text" name="username" placeholder="Tài khoản">--%>
            <%--                    <span class="focus-input100"></span>--%>
            <%--                    <span class="symbol-input100">--%>
            <%--							<i class="fa fa-envelope" aria-hidden="true"></i>--%>
            <%--						</span>--%>
            <%--                </div>--%>

            <%--                <div class="wrap-input100 validate-input" data-validate="Password is required">--%>
            <%--                    <input class="input100" type="password" name="password" placeholder="Mật khẩu">--%>
            <%--                    <span class="focus-input100"></span>--%>
            <%--                    <span class="symbol-input100">--%>
            <%--							<i class="fa fa-lock" aria-hidden="true"></i>--%>
            <%--						</span>--%>
            <%--                </div>--%>

            <%--                <div class="container-login100-form-btn">--%>
            <%--                    <button class="login100-form-btn" type="submit">--%>
            <%--                        Đăng nhập--%>
            <%--                    </button>--%>
            <%--                </div>--%>

            <%--                <div class="text-center p-t-12">--%>
            <%--						<span class="txt1">--%>
            <%--							Forgot--%>
            <%--						</span>--%>
            <%--                    <a class="txt2" href="#">--%>
            <%--                        username / password ?--%>
            <%--                    </a>--%>
            <%--                </div>--%>
            <%--            </form>--%>
        </div>
    </div>
</div>
<script>
    $('#login').click(function () {
        $('#form-login').show();
        $('#form-sign-up').hide();
    })
    $('#sign-up').click(function () {
        $('#form-login').hide();
        $('#form-sign-up').show();
    })
</script>
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
</body>
</html>
