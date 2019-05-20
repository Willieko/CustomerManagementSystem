<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
    String ctx = request.getContextPath();
    pageContext.setAttribute("root", ctx);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>客户管理</title>
    <link rel="stylesheet" href="${root }/css/base.css">
    <link rel="stylesheet" href="${root }/css/maincontent.css">
</head>
<body>
<!--蒙版-->
<div class="page"></div>
<!--头部导航-->
<div class="content-nav">
    <p>客户管理</p>
</div>
<!--操作面板-->
<div class="operation">
    <input id="add_btn" class="add-btn" type="button" value="＋新增">
    <div class="cust-search"><input type="text"><input type="button" value="☯查找"></div>
</div>
<!--客户面板-->
<div class="customer">
    <div class="customer-table">
    <ul class="customer-headline">
        <li>序号</li>
        <li>姓名</li>
        <li>性别</li>
        <li>出生年月</li>
        <li>手机号码</li>
        <li>QQ号码</li>
        <li>职业</li>
        <li>爱好</li>
        <li>住址</li>
        <li>备注</li>
        <li>管理</li>
    </ul>
        <c:forEach items="${allCustomers}" var="customer" varStatus="status">
            <ul class="customer-data">
                <li>${ status.index+1}</li>
                <li>${customer.name }</li>
                <li>${customer.sex }</li>
                <li>${customer.birthdate }</li>
                <li>${customer.telephone }</li>
                <li>${customer.qqnumber }</li>
                <li>${customer.job }</li>
                <li>${customer.hobby }</li>
                <li>${customer.address }</li>
                <li>${customer.remark }</li>
                <li>
                    <input id="edit_btn" type="button" value="修改" onclick='location.href=("${root}/editUI.action?id=${customer.id}")'>
                    <input type="button" value="删除" onclick='location.href=("${root }/deleteCustomers.action?id=${customer.id}")'>
                </li>
            </ul>
        </c:forEach>
    </div>
</div>
<!--新增面板-->
<div id="add_panel" class="add-panel">
    <div id="add_close" class="close"></div>
    <div class="line"></div>
    <div class="add-panel-in">
        <form action="${root}/addCustomer.action" id="add_form" method="post">
        <div><label >姓&emsp;&emsp;名:</label><input type="text" name="name" autocomplete="off"></div>
        <div>
            <label >性&emsp;&emsp;别:</label>
            <select name="sex">
            <option value="男">男</option>
            <option value="女">女</option>
            </select>
        </div>
        <div><label >出生年月:</label><input type="date" name="birthdate"></div>
        <div><label >电话号码:</label><input type="number" name="telephone" autocomplete="off"></div>
        <div><label >QQ&nbsp;号码:</label><input type="number" name="qqnumber" autocomplete="off"></div>
        <div>
            <label >职&emsp;&emsp;业:</label>
            <select name="job">
                <option value="IT/互联网">IT/互联网</option>
                <option value="医生">医生</option>
                <option value="金融">金融</option>
                <option value="行政">行政</option>
                <option value="电子竞技">电子竞技</option>
                <option value="自由职业">自由职业</option>
                <option value="学生">学生</option>
            </select>
        </div>
        <div><label >爱&emsp;&emsp;好:</label><input type="text" name="hobby" autocomplete="off"></div>
        <div><label >住&emsp;&emsp;址:</label><input type="text" name="address" autocomplete="off"></div>
        <div class="remark-div"><label class="remark-label">备&emsp;&emsp;注:</label><textarea maxlength="45" name="remark" class="remark"></textarea></div>
        <div class="btns"><input id="add_sure" type="button" value="确认"><input type="reset"></div>
        </form>
    </div>
</div>
<script src="${root}/js/jquery-1.12.4.js"></script>
<script src="${root}/js/maincontent.js"></script>
</body>
</html>