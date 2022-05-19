<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2020/5/16
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>企业人事管理系统</title>
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
<%--<body style="background-image: url(${pageContext.request.contextPath}/images/bg.jpeg)">--%>
<body style="background-image: url(${pageContext.request.contextPath}/images/bg2222.jpeg)">
<!--面板-->
<div id="panel">
    <!--面板的头部-->
    <div class="panel-top">
        <h2>欢迎登录企业人事管理系统！</h2>
    </div>
    <!--面板的主要内容-->
    <div class="panel-content">
        <form action="${pageContext.request.contextPath}/userLogin/login" method="post">
            <div class="int">
                <input required="required" value="${sessionScope.ul.accountName}" id="accountName" type="text" name="accountName" placeholder="请输入你的账号">
            </div>
            <div class="int">
                <input required="required" id="password" type="password" name="password" placeholder="输入密码">
            </div>
            <div class="int">
                <select name="userType">
                    <option value="0">系统管理员</option>
                    <option value="1">人事专员</option>
                    <option value="2">普通员工</option>
                </select>
            </div>
            <!--配置信息-->
            <div class="login">
                <button type="submit">登录</button>
            </div>
            <div class="reg">还没账号?<a href="${pageContext.request.contextPath}/userLogin/registerForm">马上注册</a>
            </div>
        </form>
    </div>
</div>
</body>
</html>
