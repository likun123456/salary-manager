package com.service;


import com.domain.UserLeave;

import java.util.List;

public interface UserLeaveService {

    //添加请假信息
    boolean addUserLeave(UserLeave userLeave);
    //显示全部未审批的请假信息
    List<UserLeave> allUserLeave();
    //审批请假信息
    void updateUserLeave(int id,String result);
    //通过用户名查询请假信息
    List<UserLeave> searchUserLeave(String accountName);
}
