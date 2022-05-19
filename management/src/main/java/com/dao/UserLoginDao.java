package com.dao;

import com.domain.UserLogin;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 */
@Repository
public interface UserLoginDao {
    //通过用户名查询
    @Select("select * from user_login where accountName = #{accountName}")
    UserLogin loginCheck(UserLogin userLogin);
    //查询所有用户信息
    @Select("select * from user_login")
    List<UserLogin> findAll();
    //插入用户信息
    @Insert("insert into user_login(accountName,password,userType) values(#{accountName},#{password},#{userType})")
    int userRegister(UserLogin userLogin);
}
