package com.service;

import com.domain.UserClock;
import com.domain.UserInfo;

import java.util.List;

public interface UserClockService {

    //添加打卡信息
    boolean addUserClock(UserClock userClock);
    //通过用户名和打卡年月日来确定是否重复打卡
    UserClock searchUserClockByNameAndTime(UserClock userClock);
    //查询某天打卡信息
    List<UserClock> searchUserClockByTime(UserClock userClock);
}
