package com.service.impl;

import com.dao.UserClockDao;
import com.dao.UserInfoDao;
import com.domain.UserClock;
import com.domain.UserInfo;
import com.service.UserClockService;
import com.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserClockService")
public class UserClockServiceImpl implements UserClockService {

    @Autowired
    private UserClockDao userClockDao;

    //添加打卡信息
    @Override
    public boolean addUserClock(UserClock userClock)
    {
        if(userClockDao.addUserClock(userClock)>0) {
            return true;
        }
        else {
            return false;
        }
    }
    //通过用户名和打卡年月日来确定是否重复打卡
    @Override
    public UserClock searchUserClockByNameAndTime(UserClock userClock)
    {
        UserClock userClock1=userClockDao.searchUserClockByNameAndTime(userClock);
        return userClock1;
    }
    //查询某天打卡信息
    @Override
    public List<UserClock> searchUserClockByTime(UserClock userClock)
    {
        List<UserClock> list=userClockDao.searchUserClockByTime(userClock);
        return list;
    }
}
