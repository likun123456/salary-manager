<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2020/5/16
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>请假页面</title>
    <style type="text/css">
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
        <h2>请假申请表</h2>
    </div>
    <hr>
    <div class="panel_content">
        <fm:form action="addUserLeave" var="userLeave">
            <table border="0" width="800">
                <tr>
                    <td align="right" width="150">
                        用户名：
                    </td>
                    <td align="left" class="info" width="250">
                        <b>${userLeave.accountName}</b>
                        <input type="hidden" id="accountName" name="accountName" value="${userLeave.accountName}">
                    </td>
                    <td width="150" align="right">
                        姓名：
                    </td>
                    <td width="250" align="left" class="info">
                        <b>${userLeave.realName}</b>
                        <input type="hidden" id="realName" name="realName" value="${userLeave.realName}">
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150">
                        <b>*</b>请假日期：
                    </td>
                    <td width="250" align="left">
                        <input required="required" id="leaveDate" type="date" name="leaveDate">
                    </td>
                </tr>
                <tr>
                    <td align="right" width="150">
                        <b>*</b>请假原因：
                    </td>
                    <td width="250" align="left">
                        <input required="required" id="reason" type="text" name="reason">
                    </td>
                </tr>
                <tr>
                    <td width="150" align="right">
                        <b>*</b>请假天数：
                    </td>
                    <td align="left" width="250">
                        <input required="required" id="days" type="int" name="days">
                    </td>
                </tr>
                <tr>
                    <td width="150">

                    </td>
                    <td width="250" align="left">
                        <button class="subbtn" type="submit">提交</button>
                    </td>
                </tr>
            </table>
        </fm:form>
    </div>
</div>
</body>
</html>
