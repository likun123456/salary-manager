package com.service.impl;


import com.dao.UserLeaveDao;
import com.domain.UserLeave;
import com.service.UserLeaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserLeaveService")
public class UserLeaveServiceImpl implements UserLeaveService {

    @Autowired
    private UserLeaveDao userLeaveDao;

    //添加请假信息
    @Override
    public boolean addUserLeave(UserLeave userLeave)
    {
        userLeave.setResult("未审批");
        if(userLeaveDao.addUserLeave(userLeave)>0) {
            return true;
        }
        else {
            return false;
        }
    }
    //查询全部没有审批的请假信息
    @Override
    public List<UserLeave> allUserLeave()
    {
        System.out.println("查询全部没有审批的请假信息");
        return userLeaveDao.allUserLeave();
    }
    //审批请假信息
    @Override
    public void updateUserLeave(int id,String result)
    {
        System.out.println("更新用户请假信息");
        userLeaveDao.updateUserLeave(id,result);
    }
    //通过用户名查询请假信息
    @Override
    public List<UserLeave> searchUserLeave(String accountName)
    {
        System.out.println("查看某个用户的请假信息");
        return userLeaveDao.searchUserLeave(accountName);
    }
}
