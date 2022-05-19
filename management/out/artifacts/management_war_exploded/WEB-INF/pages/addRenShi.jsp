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
    <script language="JavaScript">
        function check() {
            var password = document.getElementById("password").value;
            var password1 = document.getElementById("password1").value;
            if (password != password1) {
                alert("两次密码不相同，请检查密码")
                return false;
            }
        }
    </script>
    <style>
        input {
            width: 90%;
            height: 35px;
            border: 1px solid #dddddd;
            padding-left: 6px;
            /*输入框不超出设置的最大容器*/
            box-sizing: border-box;
            border-radius: 5px;
        }

        table {
            font-size: large;
        }

        #panel {
            padding: 0;
        }

        #panel .panel_head {
            padding-left: 10px;
            height: 40px;
        }

        #panel .panel_content {
            margin-left: 40px;
            margin-top: 30px;
            background-color: white;
        }

        body {
            padding: 0;
            background-color: #FFFFFF;
        }

        b {
            color: red;
        }

        td {
            padding-top: 20px;
            padding-bottom: 20px;
        }

        .subbtn {
            width: 40%;
            height: 33px;
            border: 0;
            color: white;
            font-size: 18px;
            margin-bottom: 10px;
            border-radius: 5px;
            background-color: #43CD80;
        }

        .subbtn:hover {
            width: 40%;
            height: 33px;
            border: 0;
            color: white;
            font-size: 18px;
            margin-bottom: 10px;
            border-radius: 5px;
            background-color: #40E0D0;
        }

        .info b{
            color: #333333;
        }
    </style>
</head>
<body>
<div id="panel">
    <div class="panel_head">
        <h2>添加人事专员账号</h2>
    </div>
    <hr>
    <div class="panel_content">
        <form action="../userLogin/register" onsubmit="return check()" method="post">
            <table border="0" width="400">
                <tr>
                    <td align="right" width="150">
                        <b>*</b>账号：
                    </td>
                    <td width="250" align="left">
                        <input required="required" id="accountName" type="text" name="accountName" placeholder="请输入账号">
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150">
                        <b>*</b>密码：
                    </td>
                    <td width="250" align="left">
                        <input required="required" id="password" type="password" name="password" placeholder="输入密码">
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150">
                        <b>*</b>确认密码：
                    </td>
                    <td width="250" align="left">
                        <input required="required" id="password1" type="password" name="password1" placeholder="确认密码">
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150">
                        <b>*</b>账号类型：
                    </td>
                    <td width="250" align="left">
                        <input disabled  placeholder="人事专员">
                        <input type="hidden" name="userType" value="1">                    </td>
                </tr>
                <tr>
                    <td width="150">

                    </td>
                    <td width="250" align="left">
                        <button class="subbtn" type="submit">添加</button>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>
