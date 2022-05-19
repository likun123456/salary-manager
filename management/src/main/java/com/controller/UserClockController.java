package com.controller;

import com.domain.UserClock;
import com.domain.UserInfo;
import com.domain.UserLogin;
import com.service.UserClockService;
import com.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/userClock")
public class UserClockController {

    @Autowired
    private UserClockService userClockService;
    @Autowired
    private UserInfoService userInfoService;

    /**
     * 添加打卡信息
     * @param userClock
     * @return
     */
    @RequestMapping("/addUserClock")
    public String addUserClock(Model model,UserClock userClock) {
        //从session中获取accountName和realName
        HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        String accountName=((UserLogin)request.getSession().getAttribute("ul")).getAccountName();
        UserInfo userInfo=userInfoService.SearchUserInfoByAname(accountName);
        if (userInfo == null) {
            return "user_info_error";
        }else{
            userClock.setAccountName(accountName);
            userClock.setRealName(userInfo.getRealName());
            //获取当前时间
            Date date = new Date();
            //设置时间格式
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String time=formatter.format(date);
            userClock.setClockYear(Integer.parseInt(time.substring(0,4)));
            userClock.setClockMonth(Integer.parseInt(time.substring(6,7)));
            userClock.setClockDay(Integer.parseInt(time.substring(8,10)));
            userClock.setClockTime(time.substring(11,19));
            System.out.println(formatter.format(date));
            //若打卡表当天没有打卡信息则进行打卡
            if(userClockService.searchUserClockByNameAndTime(userClock)==null)
            {
                model.addAttribute("userClock",userClock);
                if(userClockService.addUserClock(userClock))
                {
                    return "userClock";
                } else{
                    return "success";
                }
            }
            else
            {
                return "user_clock_error";
            }
        }
    }

    /**
     * 查询当天的考勤信息
     * @param model
     * @return
     */
    @RequestMapping("/allUserClock")
    public String allUserClock(Model model)
    {
        UserClock userClock=new UserClock();
        //获取当前时间
        Date date = new Date();
        //设置时间格式
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=formatter.format(date);
        userClock.setClockYear(Integer.parseInt(time.substring(0,4)));
        userClock.setClockMonth(Integer.parseInt(time.substring(6,7)));
        userClock.setClockDay(Integer.parseInt(time.substring(8,10)));
        List<UserClock> list=userClockService.searchUserClockByTime(userClock);
        model.addAttribute("list",list);
        model.addAttribute("date",date);
        return "allUserClock";
    }

    /**
     * 选择日期后提交到这个方法并查询该日期的考勤记录
     * @param request
     * @return
     */
    @RequestMapping("/searchUserClockByTime")
    public String searchUserClockByTime(Model model,HttpServletRequest request)
    {
        UserClock userClock=new UserClock();
        String time=request.getParameter("date");
        userClock.setClockYear(Integer.parseInt(time.substring(0,4)));
        userClock.setClockMonth(Integer.parseInt(time.substring(6,7)));
        userClock.setClockDay(Integer.parseInt(time.substring(8,10)));
        List<UserClock> list=userClockService.searchUserClockByTime(userClock);
        model.addAttribute("list",list);
        System.out.println(time);
        System.out.println(userClock.toString());
        return "allUserClock";
    }

    /**
     * 补签页面的请求
     * @param model
     * @return
     */
    @RequestMapping("/addUserClockForm")
    public String addUserClockForm(Model model)
    {
        List<UserInfo> list=userInfoService.SearchALLUserInfo();
        model.addAttribute("list",list);
        return "addUserClock";
    }
    @RequestMapping("/replenishUserClock")
    public String replenishUserClock(Model model,HttpServletRequest request)
    {
        List<UserInfo> list=userInfoService.SearchALLUserInfo();
        model.addAttribute("list",list);
        UserClock userClock=new UserClock();
        userClock.setAccountName(request.getParameter("accountName"));
        userClock.setRealName(request.getParameter("realName"));
        String time=request.getParameter("date");
        userClock.setClockYear(Integer.parseInt(time.substring(0,4)));
        userClock.setClockMonth(Integer.parseInt(time.substring(6,7)));
        userClock.setClockDay(Integer.parseInt(time.substring(8,10)));
        userClock.setClockTime("08:00:00");
        //若打卡表当天没有打卡信息则进行打卡
        if(userClockService.searchUserClockByNameAndTime(userClock)==null)
        {
            if(userClockService.addUserClock(userClock))
            {
                return "add_userclock_success";
            } else{
                return "add_userclock_error";
            }
        }
        else
        {
            return "user_clock_error";
        }
    }
}
