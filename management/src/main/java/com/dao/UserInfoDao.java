package com.dao;

import com.domain.UserInfo;
import com.domain.UserLogin;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 */
@Repository
public interface UserInfoDao {
    //插入用户信息
    @Insert("insert into user_info(accountName,realName,depart,address,phone,sex,age) " +
            "values(#{accountName},#{realName},#{depart},#{address},#{phone},#{sex},#{age})")
    int addUserInfo(UserInfo userInfo);
    //修改用户信息
    @Update("update user_info set " +
            "realName=#{realName},depart=#{depart}," +
            "address=#{address},phone=#{phone},sex=#{sex},age=#{age}" +
            "where accountName=#{accountName}")
    int updateUserInfo(UserInfo userInfo);
    //通过用户名查询用户信息
    @Select("select * from user_info where accountName = #{accountName}")
    UserInfo SearchUserInfoByAname(String accountName);
    //查询所有用户信息
    @Select("select * from user_info")
    List<UserInfo> SearchALLUserInfo();
}
