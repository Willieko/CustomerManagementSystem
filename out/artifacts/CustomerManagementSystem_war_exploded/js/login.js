/**
 * Created by GaoWY on 2018/9/22.
 */
$(function () {
    $('#lg_tab').children().click(function () {
        $(this).addClass("current");
        $(this).siblings().removeClass("current");
        var index = $(this).index();
        if(index == 0){
            $('#lg_page').animate({height:350});
            $('#login_panel').show();
            $('#regist_panel').hide();
        }else if(index ==1){
            $('#lg_page').animate({height:440});
            $('#login_panel').hide();
            $('#regist_panel').show();
        }
    });
    $('#service').click(function () {
        $('#mb').addClass("mb");
        $('#service_panel').show();
    });
    $('#close,#x').click(function () {
        $('#mb').removeClass('mb');
        $('#service_panel').hide();
    });
    $('#login_btn').click(function () {
        if($('#l_username').val()==""){
            alert("请输入用户名");
            return;
        }else if($('#l_password').val()==""){
            alert("请输入密码");
            return;
        }else{
            $('#login_form').submit();
        }
    });
    $('#regist_btn').click(function () {
        if($('#g_username').val()==""){
            alert("用户名不允许为空");
            return;
        }else if($('#g_password').val()==""){
            alert("密码不允许为空");
            return;
        }else if($('#g_password2').val() != $('#g_password').val()){
            alert("两次输入的密码不相同");
            return;
        }else if($('#g_phone').val()==""){
            alert("手机号码不能为空");
            return;
        }else{
            $('#regist_form').submit();
        }
    })
});