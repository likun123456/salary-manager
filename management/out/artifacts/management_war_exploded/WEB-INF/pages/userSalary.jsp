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
    <title></title>
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
    </style>
</head>
<body>
<div id="panel">
    <div class="panel_head">
        <h2>工资发放记录</h2>
    </div>
    <hr>
    <div class="panel_content">
        <table width="600" border="1" cellspacing="0" cellpadding="0">
            <tr>
                <td width="100" align="center">
                    账号
                </td>
                <td width="150" align="center">
                    姓名
                </td>
                <td width="150" align="center">
                    工资月份
                </td>
                <td width="50" align="center">
                    金额
                </td>
                <td width="150" align="center">
                    工资发放日期
                </td>
            </tr>
            <c:forEach items="${list}" var="userSalary">
                <tr>
                    <td width="100" align="center">
                        <b>${userSalary.accountName}</b>
                    </td>
                    <td width="150" align="center">
                        <b>${userSalary.realName}</b>
                    </td>
                    <td width="150" align="center">
                            ${userSalary.YEAR}年&nbsp;${userSalary.MONTH}月
                    </td>
                    <td width="50" align="center">
                        <b>${userSalary.salary}(元)</b>
                    </td>
                    <td width="150" align="center">
                            ${userSalary.salaryDate}
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
