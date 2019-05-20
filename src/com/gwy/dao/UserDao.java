package com.gwy.dao;
import com.gwy.domain.User;
import org.apache.ibatis.annotations.Param;


public interface UserDao {
    /*** 登录***/
    public User checkUser(@Param("username") String username, @Param("password") String password);

    /*** 注册用户***/
    public void addUser(User user);

    /*** 检测用户名是否存在***/
    public User checkUsername(@Param("username") String username);

    /*** 根据uid获取用户信息***/
    public User getUserWithUID(@Param("uid") String uid);

    /*** 修改用户信息***/
    public void updateUser(User user);
}
