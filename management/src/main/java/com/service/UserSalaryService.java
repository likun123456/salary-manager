package com.service;


import com.domain.UserLeave;
import com.domain.UserSalary;

import java.util.List;

public interface UserSalaryService {

    //添加工资信息
    boolean addUserSalary(UserSalary userSalary);
    //显示全部未审批的请假信息
    List<UserSalary> allUserSalary(String accountName);
    //确认每人每月仅有一个工资记录
    UserSalary SearchUserSalaryByYearAndMonth(UserSalary userSalary);
}
