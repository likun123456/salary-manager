package com.controller;

import com.domain.UserInfo;
import com.domain.UserLeave;
import com.domain.UserLogin;
import com.domain.UserSalary;
import com.service.UserInfoService;
import com.service.UserLeaveService;
import com.service.UserSalaryService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import sun.awt.ModalityListener;

import javax.servlet.http.HttpServletRequest;
import java.time.Month;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/userSalary")
public class UserSalaryController {

    @Autowired
    private UserSalaryService userSalaryService;
    @Autowired
    private UserInfoService userInfoService;

    /**
     *查看工资页面的请求
     * @param model
     * @return
     */
    @RequestMapping("/UserSalary")
    public String UserLeave(Model model)
    {
        //从Session中读取accountName并查询个人信息展示出accountName和realName
        HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        String accountName=((UserLogin)request.getSession().getAttribute("ul")).getAccountName();
        if (accountName == null) {
            return "user_salary_error";
        }else{
            List<UserSalary> list=userSalaryService.allUserSalary(accountName);
            model.addAttribute("list",list);
            return "userSalary";
        }
    }

    /**
     * 发放工资页面请求
     * @param model
     * @return
     */
    @RequestMapping("/addUserSalaryForm")
    public String addUserSalaryForm(Model model)
    {
        List<UserInfo> list=userInfoService.SearchALLUserInfo();
        model.addAttribute("list",list);
        return "addUserSalary";
    }
    /**
     * 添加工资信息
     * @param
     * @param model
     * @return
     */
    @RequestMapping("/addUserSalary")
    public String addUserLeave(Model model,HttpServletRequest request) {
        UserLogin userLogin = ((UserLogin) request.getSession().getAttribute("ul"));
        String date=request.getParameter("MONTH");
        int year=Integer.parseInt(date.substring(0,4));
        int month=Integer.parseInt(date.substring(5,7));
        UserSalary userSalary = new UserSalary();
        userSalary.setAccountName(request.getParameter("accountName"));
        userSalary.setRealName(request.getParameter("realName"));
        userSalary.setSalaryDate(request.getParameter("salaryDate"));
        String basic_salary = request.getParameter("basic_salary");
        System.out.println(basic_salary);
        userSalary.setBasic_salary(Integer.parseInt(request.getParameter("basic_salary")));
        userSalary.setPost_salary(Integer.parseInt(request.getParameter("post_salary")));
        userSalary.setPerformance_salary(Integer.parseInt(request.getParameter("performance_salary")));
        userSalary.setSocial_security(Integer.parseInt(request.getParameter("social_security")));
        userSalary.setRevenue(Integer.parseInt(request.getParameter("revenue")));
        userSalary.setLeave(Integer.parseInt(request.getParameter("leave")));
        userSalary.setSalary(this.computeSalary(userSalary.getBasic_salary(), userSalary.getPost_salary(), userSalary.getPerformance_salary(),
                userSalary.getSocial_security(), userSalary.getRevenue(), userSalary.getLeave()));
        userSalary.setYEAR(year);
        userSalary.setMONTH(month);
        //用以查看该员工工资是否发放过了
        UserSalary userSalary1=userSalaryService.SearchUserSalaryByYearAndMonth(userSalary);
        //未完善信息或不是管理员不能进行发放工资
        if (userLogin == null||userLogin.getUserType()!=0) {
            return "add_user_salary_error";
        } else{
            //如果没有查到记录，就给予发放
            if(userSalary1==null)
            {
                userSalaryService.addUserSalary(userSalary);
                List<UserInfo> list=userInfoService.SearchALLUserInfo();
                model.addAttribute("list",list);
                return "add_user_salary_success";
            }
            else
            {
                return "add_user_salary_error";
            }
        }
    }

    private int computeSalary(Integer basic, Integer post, Integer performance,
                                  Integer social, Integer revenue, Integer leave) {
        return basic + post + performance - (Math.abs(social)) - Math.abs(revenue) - Math.abs(leave);
    }
}
