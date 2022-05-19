package com.controller;

import org.apache.ibatis.annotations.Result;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/form")
public class FormController {

    @RequestMapping("/left")
    public String left() {
        return "left";
    }

    @RequestMapping("/left1")
    public String left1() {
        return "left1";
    }

    @RequestMapping("/main")
    public String main() {
        return "main";
    }

    @RequestMapping("/head")
    public String head() {
        return "head";
    }

    @RequestMapping("/success")
    public String success() {
        return "success";
    }

    @RequestMapping("/addRenShi")
    public String addRenShi() {
        return "addRenShi";
    }
}
