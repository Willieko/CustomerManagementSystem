<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String ctx = request.getContextPath();
    pageContext.setAttribute("root", ctx);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注销</title>
    <link rel="stylesheet" href="${root }/css/base.css">
    <link rel="stylesheet" href="${root }/css/logout.css">
</head>
<body>
<div class="info">
    <p>请重新登录!</p>
    <a href="login.jsp" target="_parent">登录</a>
</div>
</body>
</html>