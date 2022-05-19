package com.dao;

import com.domain.UserClock;
import com.domain.UserInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 */
@Repository
public interface UserClockDao {
    //添加打卡信息
    @Insert("insert into user_clock(accountName,realName,clockYear,clockMonth,clockDay,clockTime)" +
            "values(#{accountName},#{realName},#{clockYear},#{clockMonth},#{clockDay},#{clockTime})")
    int addUserClock(UserClock userClock);
    //通过用户名和年月日查询打卡信息
    @Select("select * from user_clock where " +
            "accountName=#{accountName} and clockYear=#{clockYear} and clockMonth=#{clockMonth} and clockDay=#{clockDay}")
    UserClock searchUserClockByNameAndTime(UserClock userClock);
    //查询某天打卡信息
    @Select("select * from user_clock where " +
            "clockYear=#{clockYear} and clockMonth=#{clockMonth} and clockDay=#{clockDay}")
    List<UserClock> searchUserClockByTime(UserClock userClock);
}
