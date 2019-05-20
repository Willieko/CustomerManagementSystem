package com.gwy.web;

import com.gwy.domain.User;
import com.gwy.service.UserService;
import com.gwy.utils.RandomValidateCode;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;
import java.util.UUID;

import static com.gwy.utils.RandomValidateCode.RANDOMCODEKEY;

@Controller
public class UserController{
    //依赖注入
    @Autowired
    private UserService userService;

    /*** 用户登录***/
    @RequestMapping(value = "/login.action",method = RequestMethod.POST)
    public String login(String username, String password, Model model, HttpSession session){
        try{
            //通过账号和密码查询用户
            User user = userService.checkUser(username,password);
            if(user !=null){
                //将用户对象添加到session中
                session.setAttribute("user",user);
                //跳转到主页面
                return "main.jsp";
            }
        }catch (Exception e){
            if(e.getMessage().equals("用户名或密码错误,请重新登录!")) {
                model.addAttribute("msg",e.getMessage());
                //返回到登录页面
                return "login.jsp";
            }else {
                e.printStackTrace();
            }
        }
        return null;
    }
    /**** 用户注册****/
    @RequestMapping(value = "/regist.action",method = RequestMethod.POST)
    public String regist(HttpServletRequest request, HttpServletResponse response,Model model, HttpSession session){
        //获取用户输入的验证码,并且自动转换成大写
        String code = request.getParameter("code").toUpperCase();
        //获取服务器生成的验证码
        String word = (String)session.getAttribute(RANDOMCODEKEY);
        try {
            User user = new User();
            //接收所有参数
            Map<String, String[]> parameterMap = request.getParameterMap();
            //把接收到的参数封装成User对象
            BeanUtils.populate(user, parameterMap);
            //生成UID
            user.setUid(UUID.randomUUID().toString());
            //插入用户
            userService.addUser(user,code,word);
            model.addAttribute("msg","注册成功,请登录");
            return "login.jsp";
        }catch (Exception e){
            if(e.getMessage().equals("验证码错误,请重新注册!")||e.getMessage().equals("用户名已经存在,请重新注册!")) {
                model.addAttribute("msg",e.getMessage());
                //返回到登录页面
                return "login.jsp";
            }
        }
        return null;
    }
    /***用户注销***/
    @RequestMapping(value = "/logout.action")
    public String logout(HttpSession session){
        //清除session
        session.invalidate();
        //重定向到登录页面的跳转
        return "logout.jsp";
    }

    /*** 生成用户的个人信息***/
    @RequestMapping(value = "/getUserInfo.action")
    public String getUserInfo(HttpServletRequest request,HttpSession session) throws Exception{
        String uid = request.getParameter("uid");
        try {
            User user = userService.getUserInfoWithUID(uid);
            session.setAttribute("user", user);
            return "personinfo.jsp";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    /*** 修改用户个人信息***/
    @RequestMapping(value = "/editUserInfo.action")
    public String editUserInfo(HttpServletRequest request, HttpServletResponse response,Model model) throws Exception{
        //获取所有的参数
        Map<String, String[]> parameterMap = request.getParameterMap();
        User user = new User();
        try {
            //把所有的参数封装成user对象
            BeanUtils.populate(user, parameterMap);
            userService.updateUser(user);
            return "getUserInfo.action";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    /*****验证码功能*****/
    @RequestMapping(value="/checkCode.action")
    public void checkCode(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        //设置相应类型,告诉浏览器输出的内容为图片
        response.setContentType("image/jpeg");

        //设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("pragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);

        RandomValidateCode randomValidateCode = new RandomValidateCode();
        try {
            randomValidateCode.getRandcode(request, response);//输出图片方法
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
