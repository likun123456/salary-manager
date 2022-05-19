package com.service.impl;


import com.dao.UserLeaveDao;
import com.dao.UserSalaryDao;
import com.domain.UserLeave;
import com.domain.UserSalary;
import com.service.UserLeaveService;
import com.service.UserSalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserSalaryService")
public class UserSalaryServiceImpl implements UserSalaryService {

    @Autowired
    private UserSalaryDao userSalaryDao;

    //添加请假信息
    @Override
    public boolean addUserSalary(UserSalary userSalary)
    {
        if(userSalaryDao.addUserSalary(userSalary)>0) {
            return true;
        }
        else {
            return false;
        }
    }
    //查询个人工资信息
    @Override
    public List<UserSalary> allUserSalary(String accountName)
    {
        System.out.println("查询个人工资信息");
        return userSalaryDao.allUserSalary(accountName);
    }
    //确认每人每月仅有一个工资记录
    public UserSalary SearchUserSalaryByYearAndMonth(UserSalary userSalary)
    {
        UserSalary userSalary1=userSalaryDao.SearchUserSalaryByYearAndMonth(userSalary);
        return userSalary1;
    }

}
