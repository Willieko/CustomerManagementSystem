<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String ctx = request.getContextPath();
    pageContext.setAttribute("root", ctx);
%>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户信息</title>
    <link rel="stylesheet" href="${root }/css/base.css">
    <link rel="stylesheet" href="${root }/css/personinfo.css">
</head>
<body>
<!--头部导航-->
<div class="content-nav">
    <p>个人中心</p>
</div>
<!--信息面板-->
<div class="info-panel">
    <div class="info-panel-in">
        <span class="title">个人信息</span>
        <div class="info">
            <div class="info-in">
                <form id="info_form" action="${root}/editUserInfo.action" method="post">
                    <div class="UID"><label>UID:</label><input id="uid" type="text" name="uid" value="${user.uid }"></div>
                    <div><label>用户名:</label><input id="username" type="text" name="username" value="${user.username }" autocomplete="off"></div>
                    <div><label>出生年月:</label><input type="date" name="birthdate" value="${user.birthdate }" autocomplete="off"></div>
                    <div>
                        <label >性别:</label>
                        <select id="sex" name="sex">
                            <option value="">---</option>
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                    </div>
                    <div>
                        <label >感情状况:</label>
                        <select id="feeling" name="feeling">
                            <option value="">---</option>
                            <option value="未婚">未婚</option>
                            <option value="已婚">已婚</option>
                            <option value="丧偶">丧偶</option>
                        </select>
                    </div>
                    <div>
                        <label >性取向:</label>
                        <select id="orientation" name="orientation">
                            <option value="">---</option>
                            <option value="男">男</option>
                            <option value="女">女</option>
                            <option value="通吃">通吃</option>
                        </select>
                    </div>
                    <div>
                        <label >星座:</label>
                        <select id="constellation" name="constellation">
                            <option value="">---</option>
                            <option value="白羊座">白羊座</option>
                            <option value="金牛座">金牛座</option>
                            <option value="双子座">双子座</option>
                            <option value="巨蟹座">巨蟹座</option>
                            <option value="狮子座">狮子座</option>
                            <option value="处女座">处女座</option>
                            <option value="天秤座">天秤座</option>
                            <option value="天蝎座">天蝎座</option>
                            <option value="射手座">射手座</option>
                            <option value="摩羯座">摩羯座</option>
                            <option value="水瓶座">水瓶座</option>
                            <option value="双鱼座">双鱼座</option>
                        </select>
                    </div>
                    <div><label>邮箱:</label><input type="text" name="email" value="${user.email }" autocomplete="off"></div>
                    <div><label>手机号码:</label><input id="phone" name="phone" type="number" value="${user.phone }" autocomplete="off"></div>
                    <div class="autograph-div"><label class="autograph-label">个性签名:</label><textarea maxlength="45" name="autograph" class="autograph">${user.autograph }</textarea></div>
                    <div class="btn"><input id="sure_btn" type="button" value="修改"><input type="button" value="注销" onclick='location.href=("${root}/logout.action")'></div>
                </form>
            </div>

        </div>
    </div>
</div>
<script src="${root }/js/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        //设置下拉框的值等于选中状态
        $("#sex option[value=${user.sex}]").prop("selected",true);
        $("#feeling option[value=${user.feeling}]").prop("selected",true);
        $("#orientation option[value=${user.orientation}]").prop("selected",true);
        $("#constellation option[value=${user.constellation}]").prop("selected",true);

        $("#sure_btn").click(function(){
            if($("#username").val()==""){
                alert("用户名不能为空");
                return;
            }
            if($("#phone").val()==""){
                alert("手机号码不能为空");
                return;
            }
            $("#info_form").submit();
            alert("修改信息成功");
        });


    });

</script>
</body>
</html>