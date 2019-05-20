<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>	
<%
	String ctx = request.getContextPath();
	pageContext.setAttribute("root", ctx);
%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
    <link rel="stylesheet" href="${root }/css/base.css">
    <link rel="stylesheet" href="${root }/css/Edit.css">
</head>
<body>
<!--头部导航-->
<div class="content-nav">
    <p>客户编辑</p>
</div>
<!--编辑面板-->
<div id="edit_panel" class="add-panel">
    <div class="add-panel-in">
        <form action="${root }/eidtCustomer.action" id="edit_form" method="post">
        <div class="ID"><label >I&emsp;&emsp;D:</label><input type="text" name="id" value="${customer.id }" autocomplete="off"></div>
            <div><label >姓&emsp;&emsp;名:</label><input type="text" name="name" value="${customer.name }" autocomplete="off"></div>
            <div>
                <label >性&emsp;&emsp;别:</label>
                <select id="sex" name="sex" >
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select>
            </div>
            <div><label >出生年月:</label><input type="date" name="birthdate" value="${customer.birthdate }"></div>
            <div><label >电话号码:</label><input type="number" name="telephone" value="${customer.telephone }" autocomplete="off"></div>
            <div><label >QQ&nbsp;号码:</label><input type="number" name="qqnumber" value="${customer.qqnumber }" autocomplete="off"></div>
            <div>
                <label >职&emsp;&emsp;业:</label>
                <select id="job" name="job" >
                   <option value="IT/互联网">IT/互联网</option>
                   <option value="医生">医生</option>
	               <option value="金融">金融</option>
	               <option value="行政">行政</option>
	               <option value="电子竞技">电子竞技</option>
	               <option value="自由职业">自由职业</option>
	               <option value="学生">学生</option>
                </select>
            </div>
            <div><label >爱&emsp;&emsp;好:</label><input type="text" name="hobby" value="${customer.hobby }" autocomplete="off"></div>
            <div><label >住&emsp;&emsp;址:</label><input type="text" name="address" value="${customer.address }" autocomplete="off"></div>
            <div class="remark-div"><label class="remark-label">备&emsp;&emsp;注:</label><textarea maxlength="45" name="remark" class="remark">${customer.remark}</textarea></div>
            <div class="btns"><input id="edit_sure" type="button" value="确认">
            <input type="reset"></div>
        </form>
    </div>
</div>
<script src="${root }/js/jquery-1.12.4.js"></script>
<script>
    $(function () {
        $('#edit_sure').click(function () {
            $('#edit_form').submit();
        })
        //让value的值等于商品is_hot的option成为选中状态
        $("#sex option[value=${customer.sex}]").prop("selected",true);
        $("#job option[value=${customer.job}]").prop("selected",true);
    })
</script>
</body>
</html>