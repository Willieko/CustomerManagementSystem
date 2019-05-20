<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String ctx = request.getContextPath();
    pageContext.setAttribute("root", ctx);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录/注册</title>
    <link rel="stylesheet" href="${root}/css/base.css">
    <link rel="stylesheet" href="${root}/css/login.css">
</head>
<body>
<div class="page">
    <p>过客表单</p>
<div id="lg_page" class="lg-page">
    <div id="login_panel" class="login-panel">
	    <form id="login_form" action="${root}/login.action" method="post">
	        <div><input id="l_username" class="username" type="text" name="username" placeholder="请输入用户名" autocomplete="off"></div>
	        <div><input id="l_password" class="password" type="text" name="password" placeholder="请输入密码" autocomplete="off"></div>
            <span><input class="checkbox" type="checkbox">记住密码</span>
	        <input id="login_btn" class="login-btn" type="button" value="登录">
	        <p>${msg}</p>
	    </form>
    </div>
    <div id="regist_panel" class="regist-panel">
        <form id="regist_form" action="${root}/regist.action" method="post">
            <div><input id="g_username" class="username" type="text" name="username" placeholder="用户名" autocomplete="off"></div>
            <div><input id="g_password" class="password" type="text" name="password" placeholder="密码" autocomplete="off"></div>
            <div><input id="g_password2" class="password" type="text" placeholder="确认密码" autocomplete="off"></div>
            <div><input id="g_phone" class="telephone" type="text" name="phone" placeholder="手机号码" autocomplete="off"></div>
            <div class="thecode"><input class="code" type="text" name="code" placeholder="点击图片切换" autocomplete="off">
            <img id="img_code" src="/checkCode.action"></div>
            <input id="regist_btn" class="regist-btn" type="button" value="立即注册">
            <p>点击立即注册，即表示同意<a href="#" id="service">《服务条款》</a></p>
        </form>
    </div>
    <div id="lg_tab" class="lg-tab">
        <span id="login_tab" class="current">登录</span>
        <span id="register_tab">注册</span>
    </div>
</div>
<div id="service_panel" class="service">
    <div class="service-header">过客表单服务条款<span id="x"></span></div>
    <div class="service-content">
        <h1>《过客CRM基础版用户协议》</h1>
        <p>过客CRM免费版（以下简称免费版）是由北京易多客信息技术有限公司（以下简称过客）在该公司GokeCRM网站上创建的营销化客户管理平台。若您申请过客CRM免费版帐户（以下简称免费版帐户）并使用相应服务，您必须首先同意此协议。</p>
        <h2>一、接受</h2>
        <p>1、除非您接受本协议所有条款，否则您无权使用免费版帐户及其相关服务。如果您获得并使用我们所提供的产品和服务，则应视为您已经详细阅读了本协议的内容，同意本协议的内容，并同意遵守本协议的规定；</p>
        <p>2、基于对我们本身、用户及市场状况不断变化的考虑，我们保留随时修改、新增、删除本协议条款的权利，修改、新增、删除本协议条款时，我们将公告修改、新增、删除的事实，而不另行对您进行个别通知。若您不同意我们所修改、新增、删除的内容，可停止使用我们所提供的服务。若您继续使用我们提供的服务，则视同您同意并接受本协议条款修改、新增、删除后之一切内容，且不得因此而要求任何补偿或赔偿；</p>
        <p>3、除非特别声明，某些增强服务的新功能将适用此协议；</p>
        <p>4、此协议只有麦客免费版的书面授权人员才可以修改</p>
        <h2>二、用户</h2>
        <p>1、过客CRM网站的用户是能够承担相应法律责任的实体或自然人。若您不具备此资格，请不要使用麦客CRM网站提供的服务；</p>
        <p>2、过客CRM网站要求用户在使用服务时必须遵守相关法律法规。麦客对用户使用服务所产生的与其他公司或者个人的纠纷不负法律责任；</p>
        <p>3、过客CRM网站有权对恶意用户终止服务，并无需特别通知；</p>
        <p>4、过客CRM网站的服务将不提供给那些被临时或永久取消会员资格的实体或自然人。</p>
        <h2>三、服务内容</h2>
        <p>1、此协议所述服务仅在过客MikeCRM网站中文网站内有效。麦客中文网站是指www.Gokecrm.com及其所属网页；</p>
        <p>2、过客CRM免费版不会向客户收取任何费用，过客无义务提供相关附加服务；</p>
        <p>3、过客CRM免费版有权根据实际情况自主调整服务内容。</p>
        <h2>四、最终解释权</h2>
        <p>我们保留对本协议条款、产品和服务以及我们所提供的产品和服务的相关官方网站的最终解释权。</p>
    </div>
    <input id="close" type="button" value="关闭">
</div>
</div>
<div id="mb" ></div>
<script src="${root}/js/jquery-1.12.4.js"></script>
<script src="${root}/js/login.js"></script>
</body>
</html>