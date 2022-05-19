package com.dao;

import com.domain.UserLeave;
import com.domain.UserSalary;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 */
@Repository
public interface UserSalaryDao {
    //添加工资信息
    @Insert("insert into user_salary(accountName,realName,`YEAR`,`MONTH`,salary,basic_salary, post_salary, performance_salary, social_security, revenue, `leave`, salaryDate)" +
            "values(#{accountName},#{realName},#{YEAR},#{MONTH},#{salary}, #{basic_salary}, #{post_salary}, #{performance_salary}, #{social_security}, #{revenue}, #{leave}, #{salaryDate})")
    int addUserSalary(UserSalary userSalary);
    //查询工资信息
    @Select("SELECT * FROM user_salary WHERE accountName=#{accountName}")
    List<UserSalary> allUserSalary(String accountName);
    //确认每人每月仅有一个工资记录
    @Select("SELECT * FROM user_salary WHERE accountName=#{accountName} and YEAR=#{YEAR} and MONTH=#{MONTH}")
    UserSalary SearchUserSalaryByYearAndMonth(UserSalary userSalary);
}
