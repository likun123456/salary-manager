package com.service;

import com.domain.UserInfo;
import com.domain.UserLogin;

import java.util.List;

public interface UserInfoService {

    //完善用户信息
    boolean addUserInfo(UserInfo userInfo);
    //修改用户信息
    boolean updateUserInfo(UserInfo userInfo);
    //通过用户名查询用户信息
    UserInfo SearchUserInfoByAname(String accountName);
    //查询所有用户的信息
    List<UserInfo> SearchALLUserInfo();
}
