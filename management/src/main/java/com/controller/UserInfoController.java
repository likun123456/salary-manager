package com.controller;

import com.domain.UserInfo;
import com.domain.UserLogin;
import com.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/userInfo")
public class UserInfoController {

    @Autowired
    private UserInfoService userInfoService;


    /**
     * 完善信息页面请求
     * @return
     */
    @RequestMapping("/addUserInfoForm")
    public String index() {
        return "addUserInfo";
    }

    /**
     * 完善用户信息
     * @param userInfo
     * @return
     */
    @RequestMapping("/addUserInfo")
    public String findAll(UserInfo userInfo) {
        HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        userInfo.setAccountName(((UserLogin)request.getSession().getAttribute("ul")).getAccountName());
        if(userInfoService.addUserInfo(userInfo))
        {
            return "main";
        } else{
            return "addUserInfo";
        }
    }

    /**
     *通过用户名查询个人信息
     * @param model
     * @return
     */
    @RequestMapping("/searchUserInfo")
    public String SearchUserInfo(Model model) {
        //获取session中的用户名
        HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        String accountName=((UserLogin)request.getSession().getAttribute("ul")).getAccountName();
       //根据用户名获取用户信息
        UserInfo userInfo=userInfoService.SearchUserInfoByAname(accountName);
        model.addAttribute("ui",userInfo);
        return "updateUserInfo";
    }

    /**
     *修改个人信息
     * @return
     */
    @RequestMapping("/updateUserInfo")
    public String updateUserInfo(Model model,UserInfo userInfo) {
        HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        String accountName=((UserLogin)request.getSession().getAttribute("ul")).getAccountName();
        UserInfo ul=userInfoService.SearchUserInfoByAname(accountName);
        model.addAttribute("ui",ul);
        if(userInfoService.updateUserInfo(userInfo))
        {
            return "main";
        }
        else
        {
            return "updateUserInfo";
        }
    }
    @RequestMapping("/allUserInfo")
    public String allUserInfo(Model model)
    {
        List<UserInfo> list=userInfoService.SearchALLUserInfo();
        model.addAttribute("list",list);
        return "allUserInfo";
    }
}
