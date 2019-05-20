<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String ctx = request.getContextPath();
    pageContext.setAttribute("root", ctx);
%>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>主页</title>
    <link rel="stylesheet" href="${root }/css/base.css">
    <link rel="stylesheet" href="${root }/css/main.css">
</head>
<body>
<!--头部-->
<div class="main-header">
    <span class="logo">
        <a href="index.jsp"><img src="image/logo.png" ></a>
    </span>
    <ul class="userinfo">
        <li><img src="image/Header.jpg"></li>
        <li><a href="${root}/getUserInfo.action?uid=${user.uid}" target="right">${user.username}</a></li>
    </ul>
</div>
<div class="main-left">
    <ul class="listinfo">
        <li><a href="${root}/getAllCustomers.action" target="right"><span></span>客户管理</a></li>
        <li><a href="${root}/getNums.action" target="right"><span></span>数据分析</a></li>
        <li><a href="${root}/getUserInfo.action?uid=${user.uid}" target="right"><span></span>用户信息</a></li>
    </ul>
</div>
<div class="main-content">
    <iframe src="${root}/getAllCustomers.action" name="right" style="height: 100%;width: 100%;" frameborder="0" ></iframe>
</div>
</body>
</html>