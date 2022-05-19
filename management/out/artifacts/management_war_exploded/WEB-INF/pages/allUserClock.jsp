<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2020/5/16
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>查看考勤信息页面</title>
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

        td {
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
    </style>
</head>
<body>
<div id="panel">
    <div class="panel_head">
        <h2>考勤信息列表</h2>
    </div>
    <hr>
    <div class="panel_content">
        <table width="550" border="0">

                <tr>
                    <fm:form action="searchUserClockByTime" method="post">
                    <td width="100" align="center">
                        <input id='time' name="date" type="date"/>
                    </td>
                    <td width="150" align="center">
                        <button class="subbtn" type="submit" name="查询">查询</button>
                    </td>
                    </fm:form>
                    <td width="150" align="center">
                    </td>
                    <fm:form action="addUserClockForm" method="post">
                        <td width="150" align="center">
                            <input class="subbtn" type="submit" value="补签" name="补签">
                        </td>
                    </fm:form>
                </tr>

            <tr>
                <td width="100" align="center">
                    账号
                </td>
                <td width="150" align="center">
                    姓名
                </td>
                <td width="150" align="center">
                    打卡日期
                </td>
                <td width="150" align="center">
                    打卡时间
                </td>
            </tr>
            <c:forEach items="${list}" var="userClock">
            <tr>
                <td width="100" align="center">
                    <b>${userClock.accountName}</b>
                </td>
                <td width="150" align="center">
                    ${userClock.realName}
                </td>
                <td width="150" align="center">
                    ${userClock.clockYear}年${userClock.clockMonth}月${userClock.clockDay}日
                </td>
                <td width="150" align="center">
                    ${userClock.clockTime}
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
<script>
    /*获取当前时间*/
    var time = new Date();
    /*格式化日，如果小于9，则补0*/
    var day = ("0" + time.getDate()).slice(-2);
    /*格式化月，如果小于9，则补0*/
    var month = ("0" + (time.getMonth() + 1)).slice(-2);
    /*拼接日期*/
    var today = time.getFullYear() + "-" + (month) + "-" + (day);
    /*完成赋值操作*/
    document.getElementById("time").value = today;
</script>
</html>
