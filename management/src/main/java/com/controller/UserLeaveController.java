package com.controller;

import com.domain.UserClock;
import com.domain.UserInfo;
import com.domain.UserLeave;
import com.domain.UserLogin;
import com.service.UserClockService;
import com.service.UserInfoService;
import com.service.UserLeaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/userLeave")
public class UserLeaveController {

    @Autowired
    private UserLeaveService userLeaveService;
    @Autowired
    private UserInfoService userInfoService;

    /**
     *请假页面的请求
     * @param model
     * @return
     */
    @RequestMapping("/UserLeave")
    public String UserLeave(Model model)
    {
        //从Session中读取accountName并查询个人信息展示出accountName和realName
        HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        String accountName=((UserLogin)request.getSession().getAttribute("ul")).getAccountName();
        UserInfo userInfo=userInfoService.SearchUserInfoByAname(accountName);
        if (userInfo == null) {
            return "user_info_error";
        }else{
            UserLeave userLeave=new UserLeave();
            userLeave.setAccountName(userInfo.getAccountName());
            userLeave.setRealName(userInfo.getRealName());
            model.addAttribute("userLeave",userLeave);
            return "userLeave";
        }
    }
    /**
     * 添加请假信息
     * @param userLeave
     * @return
     */
    @RequestMapping("/addUserLeave")
    public String addUserLeave(UserLeave userLeave,HttpServletRequest request) {
        String time=request.getParameter("leaveDate");
        userLeave.setLeaveDate(time);
        if(userLeaveService.addUserLeave(userLeave))
        {
            return "userleave_success";
        } else{
            return "userLeave";
        }
    }

    /**
     * 审批页面的请求
     * @return
     */
    @RequestMapping("/findAll")
    public String findAll(Model model)
    {
        List<UserLeave> list=userLeaveService.allUserLeave();
        model.addAttribute("list",list);
        return "leaveapproval";
    }

    /**
     * 请假审批
     * @return
     */
    @RequestMapping("/leaveapproval")
    public String leaveapproval(Model model,HttpServletRequest request)
    {
        int id = Integer.parseInt(request.getParameter("id"));
        String result = request.getParameter("result");
        userLeaveService.updateUserLeave(id,result);
        List<UserLeave> list=userLeaveService.allUserLeave();
        model.addAttribute("list",list);
        return "leaveapproval";
    }
    @RequestMapping("/searchUserLeave")
    public String searchUserLeave(Model model)
    {
        HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        String accountName=((UserLogin)request.getSession().getAttribute("ul")).getAccountName();
        List<UserLeave> list=userLeaveService.searchUserLeave(accountName);
        model.addAttribute("list",list);
        return "searchUserLeave";
    }

}
