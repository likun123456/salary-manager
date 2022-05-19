package com.service.impl;

import com.dao.UserInfoDao;
import com.dao.UserLoginDao;
import com.domain.UserInfo;
import com.domain.UserLogin;
import com.service.UserInfoService;
import com.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserInfoService")
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoDao userInfoDao;

    //完善用户信息
    @Override
    public boolean addUserInfo(UserInfo userInfo)
    {
        if(userInfoDao.addUserInfo(userInfo)>0) {
            return true;
        }
        else {
            return false;
        }
    }
    //修改用户信息
    @Override
    public boolean updateUserInfo(UserInfo userInfo)
    {
        if(userInfoDao.updateUserInfo(userInfo)>0) {
            return true;
        }
        else {
            return false;
        }
    }
    //通过用户名查询用户信息
    @Override
    public UserInfo SearchUserInfoByAname(String accountName)
    {
        UserInfo ui=userInfoDao.SearchUserInfoByAname(accountName);
        return ui;
    }

    //查询所有用户信息
    @Override
    public List<UserInfo> SearchALLUserInfo()
    {
        List<UserInfo> list=userInfoDao.SearchALLUserInfo();
        return list;
    }
}
