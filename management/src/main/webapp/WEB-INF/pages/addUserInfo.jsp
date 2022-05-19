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
    <title></title>
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
        <h2>完善信息页面</h2>
    </div>
    <hr>
    <div class="panel_content">
<fm:form action="addUserInfo" method="post">
    <table border="0" width="300">
        <tr>
           <td align="left" width="100">
               账号
           </td>
            <td align="left" class="info" width="200">
                <b>${sessionScope.ul.accountName}</b>
                <input type="hidden" name="accountName" value="${sessionScope.ul.accountName}">
            </td>
        </tr>
        <tr>
            <td align="left" width="100">
                姓名
            </td>
            <td align="left" width="200">
                <input id="realName" name="realName" type="text">
            </td>
        </tr>
        <tr>
            <td align="left" width="100">
                部门
            </td>
            <td align="left" width="200">
                <input id="depart" name="depart" type="text">
            </td>
        </tr>
        <tr>
            <td align="left" width="100">
                住址
            </td>
            <td align="left" width="200">
                <input id="address" name="address" type="text">
            </td>
        </tr>
        <tr>
            <td align="left" width="100">
                电话
            </td>
            <td align="left" width="200">
                <input id="phone" name="phone" type="tel">
            </td>
        </tr>
        <tr>
            <td align="left" width="100">
                性别
            </td>
            <td align="left" width="200">
                <input id="sex" name="sex" type="text">
            </td>
        </tr>
        <tr>
            <td align="left" width="100">
                年龄
            </td>
            <td align="left" width="200">
                <input id="age" name="age" type="number">
            </td>
        </tr>
        <tr>
            <td align="left" width="200">
                <button class="upbtn" type="submit">确认</button>
            </td>
            <td align="left" width="100">

            </td>
        </tr>
    </table>
</fm:form>
    </div>
</div>
</body>
</html>
