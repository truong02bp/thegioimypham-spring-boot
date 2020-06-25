
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 16/5/2020
  Time: 9:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title><sitemesh:write property="title" default="Trang chủ"/></title>
    <meta name="author" content="ThemePunch"/>
    <meta name="description" content="The Garden theme tempalte">
    <meta name="keywords" content="The Garden theme template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@include file="/common/common-css-js.jsp" %>
</head>
<body>

<div class="the-garden">
    <sitemesh:write property="head"/>
    <%@include file="/common/web/header.jsp"%>

    <sitemesh:write property="body"/>

    <sitemesh:write property="footer"/>
    <%@include file="/common/web/footer.jsp"%>
</div>
</body>
</html>
