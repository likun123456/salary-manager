package com.service.impl;

import com.dao.UserLoginDao;
import com.domain.UserLogin;
import com.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserLoginService")
public class UserLoginServiceImpl implements UserLoginService {

    @Autowired
    private UserLoginDao userLoginDao;

    //查询所有用户信息
    @Override
    public List<UserLogin> findAll() {
        System.out.println("查询所有");
        return userLoginDao.findAll();
    }
    //用户注册
    @Override
    public boolean userRegister(UserLogin userLogin){
        int result;
        try{
            result = userLoginDao.userRegister(userLogin);
            return result>0;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }

    }
    //用户登录
    @Override
    public boolean loginCheck(UserLogin userLogin) {
        UserLogin userLoginCheck = userLoginDao.loginCheck(userLogin);
        if(userLogin.getPassword().equals(userLoginCheck.getPassword())&&userLogin.getUserType()==userLoginCheck.getUserType()){
            return true;
        }else{
            return false;
        }
    }
}
