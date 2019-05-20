package com.gwy.service;

import com.gwy.domain.User;

public interface UserService {
    //登录
    public User checkUser(String username, String password) throws Exception;

    //注册
    public void addUser(User user,String code,String word) throws Exception;

    //修改用户信息
    public void updateUser(User user);

    //根据uid查询用户
    public User getUserInfoWithUID(String uid);
}
