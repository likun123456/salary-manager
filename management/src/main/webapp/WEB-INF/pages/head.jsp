<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2020/5/19
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>员工工资事务管理系统</title>
    <style>
        body{
            background-color: #333333;
        }
        td{
            font-size: large;
            color: #FFFFFF;
        }
        a{
            color: red;
        }
    </style>
</head>
<body>
<div>
    <table width="100%" border="0">
        <tr>
            <td width="50%" align="left">
                员工工资事务管理系统
            </td>
            <td width="50%" align="right">
                欢迎您，<b class="userName">${sessionScope.ul.accountName}!</b>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
