<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2020/5/16
  Time: 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>注册</title>
    <style>
        a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var{
            padding: 0;
            margin: 0;
        }
        *{
            padding: 0;
            margin: 0;
        }
        body{
            padding-top: 200px;
            background-color: #dddddd;
            text-align: center;
        }
        #panel{
            /*最大的容器距离顶部50个像素*/
            margin-top: 25px;
            display: inline-block;
            background-color: white;
            border: 1px solid #dddddd ;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px #333333;
            width: 260px;
        }
        /*面板头部*/
        #panel .panel-top{
            alignment: left;

            font-size: 11px;
            font-family: 微软雅黑;
            font-weight: bold;
            padding: 10px 0;
            width: 230px;
            margin: 0 auto;
        }
        /*面板中间*/
        #panel .panel-content{
            margin-top: 20px;
        }
        #panel .panel-content .int{
            height: 36px;
            margin-bottom: 9px;
            position: relative;
        }
        #panel .panel-content label{
            position: absolute;    top: 7px;
            left: 6px;
        }
        #panel .panel-content .int input,select{
            width: 90%;
            height: 100%;
            border: 1px solid #dddddd;
            padding-left: 6px;
            /*输入框不超出设置的最大容器*/
            box-sizing: border-box;
            border-radius: 3px;
        }
        #panel .panel-content input:focus{
            /*取消边框*/
            outline: none;
            border: 1px solid #333333;
            box-shadow: 0 0 2px #333333;
        }
        #panel .panel-content .pwd-login a{
            display: inline-block;
            color: gray;
            font-size: 13px;
        }
        #panel .panel-content .pwd-login  input{
            /*设置行内块级标签*/
            display: inline-block;
            width: 18px;
            float: left;
        }
        #panel .login button{
            margin-top: 20px;
            width: 90%;
            height: 33px;
            border: 0;
            color: white;
            font-size: 18px;
            margin-bottom: 10px;
            border-radius: 3px;
            background-color: #43CD80;
        }
        #panel .reg{
            height: 30px;
            line-height: 30px;
            font-size: 13px;
        }
        #panel .reg a{
            font-weight: bold;
            color: #43CD80;
            text-decoration: none;
            margin-left: 5px;
        }
        #panel .panel-footer img{
            /*设置图片居中*/
            vertical-align: middle;
        }
        #panel .panel-footer span{
            /*设置文字垂直居中*/
            vertical-align: middle;
        }
    </style>
</head>
<body>
<!--面板-->
<div id="panel">
    <!--面板的头部-->
    <div class="panel-top">
        <h1>注册</h1>
    </div>
    <!--面板的主要内容-->
    <div class="panel-content">
        <form action="register1" method="post">
            <div class="int">
                <input required="required" id="accountName" type="text" name="accountName" placeholder="请输入账号">
            </div>
            <div class="int">
                <input required="required" id="password" type="password" name="password" placeholder="输入密码">
            </div>
            <div class="int">
                <input required="required" id="password1" type="password" name="password1" placeholder="确认密码">
            </div>
            <div class="int">
                <input disabled  placeholder="普通员工">
                <input type="hidden" name="userType" value="2">
            </div>

            <!--配置信息-->
            <div class="login">
                <button type="submit">注册</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
