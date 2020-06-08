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
    <title>Title</title>
</head>
<body>
<section class="myAcc myAcc2">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <ul class="myAccSidebar">
                    <li class="clearfix active" style=" border-top: 1px solid #d9d9d9;">
                        <a href="AccountDetail.html">
                            <p>Account Detail</p>
                            <i class="la la-user"></i>
                        </a>
                    </li>
                    <li class="clearfix">
                        <a href="Address.html">
                            <p>Address</p>
                            <i class="la la-home"></i>
                        </a>
                    </li>
                    <li class="clearfix">
                        <a href="PaymentMenthod.html">
                            <p>Payment Menthod</p>
                            <i class="la la-cc-mastercard"></i>
                        </a>
                    </li>
                    <li class="clearfix">
                        <a href="RecentOrder.html">
                            <p>Recent Order</p>
                            <i class="la la-shopping-cart"></i>
                        </a>
                    </li>
                    <li class="clearfix">
                        <a href="Home.html">
                            <p>Logout</p>
                            <i class="la la-sign-out"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-md-9">
                <h3 style="margin-bottom: 30px;text-align: left">USER PROFILE</h3>
                <div class="row">
                    <div class="col-md-6">
                        <div class="accInput">
                            <p>First Name</p>
                            <input type="text" class="inputText" placeholder="Enter your username or email address">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="accInput">
                            <p>Last Name</p>
                            <input type="text" class="inputText" placeholder="Enter your username or email address">
                        </div>
                    </div>
                </div>
                <div class="accInput">
                    <p>Display Name *</p>
                    <input type="text" class="inputText" placeholder="Enter your password">
                </div>
                <div class="accInput">
                    <p>Email Address</p>
                    <input type="text" class="inputText" placeholder="Enter your password">
                </div>

                <div class="boxAcc2">
                    <h4>Password Change</h4>
                    <div class="accInput">
                        <p>Currently Password (Leave Blank If Unchage)</p>
                        <input type="text" class="inputText" placeholder="Enter your password">
                    </div>
                    <div class="accInput">
                        <p>New Password (Leave Blank If Unchage)</p>
                        <input type="text" class="inputText" placeholder="Enter your password">
                    </div>
                    <div class="accInput">
                        <p>Confirm New Password</p>
                        <input type="text" class="inputText" placeholder="Enter your password">
                    </div>
                </div>
                <div class="viewMore" style="margin: 0;margin-top: 45px;">
                    <p>SAVE CHANGE</p>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
