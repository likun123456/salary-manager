package com.dao;

import com.domain.UserClock;
import com.domain.UserLeave;
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
public interface UserLeaveDao {
    //添加请假信息
    @Insert("insert into user_leave(accountName,realName,leaveDate,reason,days,result)" +
            "values(#{accountName},#{realName},#{leaveDate},#{reason},#{days},#{result})")
    int addUserLeave(UserLeave userLeave);
    //查询未审批的请假信息
    @Select("SELECT * FROM user_leave WHERE result='未审批' OR result IS null")
    List<UserLeave> allUserLeave();
    //更新请假信息
    @Update("update user_leave set result=#{result} where id=#{id}")
    void updateUserLeave(@Param("id") int id, @Param("result") String result);
    //通过用户名查询请假信息
    @Select("SELECT * FROM user_leave WHERE accountName=#{accountName}")
    List<UserLeave> searchUserLeave(String accountName);
}
