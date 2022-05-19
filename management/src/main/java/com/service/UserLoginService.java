package com.service;

import com.domain.UserLogin;

import java.util.List;

public interface UserLoginService {

    List<UserLogin> findAll();
    //用户注册
    boolean userRegister(UserLogin userLogin);
    //用户登录验证
    boolean loginCheck(UserLogin userLogin);
}
