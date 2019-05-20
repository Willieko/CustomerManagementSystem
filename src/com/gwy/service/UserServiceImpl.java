package com.gwy.service;

import com.gwy.dao.UserDao;
import com.gwy.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService {
    //注解注入UserDao
    @Autowired
    private UserDao userDao;

    //登录
    @Override
    public User checkUser(String username, String password) throws Exception{
        User user = this.userDao.checkUser(username, password);
        if(user != null){
            return user;
        }else{
            throw new Exception("用户名或密码错误,请重新登录!");
        }
    }

    //注册
    @Override
    public void addUser(User user,String code,String word) throws Exception{
        //检测用户名是否已经被注册
        User u = this.userDao.checkUsername(user.getUsername());
        if (u != null) {
            throw new Exception("用户名已经存在,请重新注册!");
        }else if(code.equals(word)){
            //判断输入的验证码,如果正确，接收所有参数
            this.userDao.addUser(user);
        }else{
            throw new Exception("验证码错误,请重新注册!");
        }
    }
    //更新用户
    @Override
    public void updateUser(User user){
        userDao.updateUser(user);
    }

    //根据uid查找用户
    @Override
    public User getUserInfoWithUID(String uid){
        User user = this.userDao.getUserWithUID(uid);
        return user;
    }
}
