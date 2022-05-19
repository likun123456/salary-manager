<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2020/5/19
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工工资管理系统</title>
    <style>
        .head {
            background-color: red;
        }
        .left {
            background-color: #dedede;
        }
        .main {
            background-color: white;
        }
    </style>
</head>
<frameset rows="5%,*" cols="*" border="0" scrolling="no">
    <frame class="head" name="head" src="../form/head">
    <frameset rows="100*" cols="220,*" border="0">
        <frame class="left" name="left1" src="../form/left1">
        <frame class="main" name="main" src="../form/main">
    </frameset>
</frameset>
</html>
