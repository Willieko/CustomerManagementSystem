package com.gwy.Interceptor;

import com.gwy.domain.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object handler)throws Exception{
        //获取请求的URL
        String url = request.getRequestURI();
        //URL:除了登录请求和首页以外，其他的URL都进行拦截控制
        if(url.indexOf("/login.action") >=0 || url.indexOf("/index.action")>=0 ||url.indexOf("/checkCode.action")>=0 ||url.indexOf("/regist.action")>=0){
            return true;
        }
        //获取session
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        //判断session中是否有用户数据，如果有，则返回true，继续向下执行
        if(user != null){
            return true;
        }
        //不符合条件的转发到提示页面
        request.getRequestDispatcher("/logout.jsp").forward(request,response);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
    }
}
