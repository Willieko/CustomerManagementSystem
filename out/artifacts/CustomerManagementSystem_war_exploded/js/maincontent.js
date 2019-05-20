/**
 * Created by GaoWY on 2018/9/22.
 */
$(function () {
    $('#add_btn').click(function () {
        $('.page').show();
        $('#add_panel').animate({top:5})
    });
    $('#add_close').click(function () {
        $('.page').hide();
        $('#add_panel').animate({top:-800},1)
    })
    
})