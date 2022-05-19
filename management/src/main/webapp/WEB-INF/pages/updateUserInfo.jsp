<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/5/18
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style type="text/css">
        input{
            width: 90%;
            height: 35px;
            border: 1px solid #dddddd;
            padding-left: 6px;
            /*输入框不超出设置的最大容器*/
            box-sizing: border-box;
            border-radius: 5px;
        }
        table{
            font-size: large;
        }
        td{
            padding-top: 20px;
            padding-bottom: 20px;
        }
        b{
            color: red;
        }
        .info b{
            color: #333333;
        }
        body{
            padding: 0;
            background-color: #FFFFFF;
        }
        #panel{
            padding: 0;
        }
        #panel .panel_head{
            padding-left: 10px;
            height: 40px;
        }
        #panel .panel_content{
            margin-left: 40px;
            margin-top: 30px;
            background-color: white;
        }
        #panel .upbtn{
            width: 40%;
            height: 33px;
            border: 0;
            color: white;
            font-size: 18px;
            margin-bottom: 10px;
            border-radius: 5px;
            background-color: #43CD80;
        }
        #panel .upbtn:hover{
            width: 40%;
            height: 33px;
            border: 0;
            color: white;
            font-size: 18px;
            margin-bottom: 10px;
            border-radius: 5px;
            background-color: #40E0D0;
        }
    </style>
</head>
<body>
<div id="panel">
    <div class="panel_head">
        <h2>个人信息页面</h2>
    </div>
    <hr>
    <b>如若发现此页面用户名和姓名为空，请立即<a href="../userInfo/addUserInfoForm">完善信息！</a></b>
    <div class="panel_content">
        <fm:form action="updateUserInfo" method="post" var="ui">
            <table border="0" width="800">
                <tr>
                    <td align="right" width="100">
                        用户名：
                    </td>
                    <td align="left" class="info" width="300">
                        <b>${ui.accountName}</b>
                        <input id="accountName" name="accountName" value="${ui.accountName}" type="hidden">
                    </td>
                    <td align="right" width="100">
                        姓名：
                    </td>
                    <td align="left" class="info" width="300">
                        <b>${ui.realName}</b>
                        <input id="realName" name="realName" value="${ui.realName}" type="hidden">
                    </td>
                </tr>
                <tr>
                    <td align="right" width="100">
                        <b>*</b>部门：
                    </td>
                    <td align="left" width="300">
                        <input id="depart" name="depart" value="${ui.depart}" type="text">
                    </td>
                </tr>
                <tr>
                    <td align="right" width="100">
                        <b>*</b>住址：
                    </td>
                    <td align="left" width="300">
                        <input id="address" name="address" value="${ui.address}" type="text">
                    </td>
                </tr>
                <tr>
                    <td align="right" width="100">
                        <b>*</b>电话：
                    </td>
                    <td width="300" align="left">
                        <input id="phone" name="phone" value="${ui.phone}" type="tel">
                    </td>
                </tr>
                <tr>
                    <td align="right" width="100">
                        <b>*</b>性别：
                    </td>
                    <td align="left" width="300">
                        <input id="sex" name="sex" value="${ui.sex}" type="text">
                    </td>
                    <td align="right" width="100">
                        <b>*</b>年龄：
                    </td>
                    <td align="left" width="300">
                        <input id="age" name="age" value="${ui.age}" type="number">
                    </td>
                </tr>
                <tr>
                    <td width="100">

                    </td>
                    <td width="300" align="left">
                        <button class="upbtn" type="submit">修改</button>
                    </td>
                    <td width="300" align="left">

                    </td>
                </tr>
            </table>
        </fm:form>
    </div>
</div>
</body>
</html>
