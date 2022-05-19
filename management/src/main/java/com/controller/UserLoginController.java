package com.controller;

import com.domain.UserLogin;
import com.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;
import java.util.List;

@Controller
@RequestMapping("/userLogin")
@SessionAttributes(value = "ul")
public class UserLoginController {

    @Autowired
    private UserLoginService userLoginService;

    /**
     * 注册页面请求
     * @return
     */
    @RequestMapping("/registerForm")
    public String registerForm() {
        return "register";
    }

    /**
     * 注册流程
     * @return
     */
    @RequestMapping("/register")
    public String register(UserLogin ul){
        if (userLoginService.userRegister(ul)) {
            return "main";
        } else {
            return "addRenShi";
        }
    }
    @RequestMapping("/register1")
    public String register1(UserLogin ul){
        if (userLoginService.userRegister(ul)) {
            return "index";
        } else {
            return "register";
        }
    }

    /**
     * 登录验证请求
     * @param userLogin
     * @return
     */
    @RequestMapping("/login")
    public String login(UserLogin userLogin,ModelMap model) {
        try {
            if (userLoginService.loginCheck(userLogin)) {
                model.put("ul",userLogin);
                return "success";
            } else {
                return "index";
            }
        }catch (Exception e){
            //e.printStackTrace();
            return "index";
        }
    }

    /**
     * 登录主页请求
     * @return
     */
    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/findAll")
    public String findAll(Model model) {
        //调用service的方法
        List<UserLogin> list = userLoginService.findAll();
        System.out.println(list);
        model.addAttribute("list", list);
        return "list";
    }
}
