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
    <title>主页</title>
    <link rel="stylesheet" href="${root }/css/base.css">
    <link rel="stylesheet" href="${root }/css/index.css">
</head>
<body>
<!--头部-->
<div class="header">
    <div class="top-content">
        <ul class="nav">
            <li><a href="">产品特性</a></li>
            <li><a href="">行业应用</a></li>
            <li><a href="">表单百科</a></li>
            <li><a href="">客户案例</a></li>
            <li><a href="">联系我们</a></li>
            <li><a href="login.jsp">登录/注册</a></li>
        </ul>
    </div>
</div>
<!--中部-->
<div class="content">
    <div class="tuwen">
    <div class="word">
        <span>
        <p>过客是一款在线表单制作工具，同时也是强大的客户信息处理和关系管理系统。</p>
        <p>她可以帮助你轻松完成信息收集与整理，实现客户挖掘与消息推送，并开展持续营销。</p>
        </span>
        <input class="freeres-btn" type="button" value="免费注册" onclick='location.href=("login.jsp")'>
    </div>
    </div>
    <div class="banner">
        <ul class="advertisement">
            <li><img src="image/ad1.png"></li>
            <li><img src="image/ad2.png"></li>
            <li><img src="image/ad3.png"></li>
            <li><img src="image/ad4.png"></li>
            <li><img src="image/ad5.png"></li>
            <li><img src="image/ad6.png"></li>
            <li><img src="image/ad7.png"></li>
        </ul>
    </div>
</div>

<!--尾部-->
<div class="footer"></div>
</body>
</html>