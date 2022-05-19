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
    <title>查看请假页面</title>
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
        .yes{
            color: green;
        }
        .no{
            color: red;
        }
        .none{
            color: #43CD80;
        }
    </style>
</head>
<body>
<div id="panel">
    <div class="panel_head">
        <h2>请假记录</h2>
    </div>
    <hr>
    <div class="panel_content">
        <table width="800">
            <tr>
                <td width="100" align="center">
                    账号
                </td>
                <td width="150" align="center">
                    姓名
                </td>
                <td width="150" align="center">
                    请假日期
                </td>
                <td width="150" align="center">
                    请假原因
                </td>
                <td width="150" align="center">
                    请假天数
                </td>
                <td width="100" align="center">
                    请假结果
                </td>
            </tr>
            <c:forEach items="${list}" var="userLeave">
                <tr>
                    <td width="100" align="center">
                        <b>${userLeave.accountName}</b>
                    </td>
                    <td width="150" align="center">
                        <b>${userLeave.realName}</b>
                    </td>
                    <td width="150" align="center">
                            ${userLeave.leaveDate}
                    </td>
                    <td width="150" align="center">
                            ${userLeave.reason}
                    </td>
                    <td width="150" align="center">
                            ${userLeave.days}
                    </td>
                    <td width="100" align="center">
                        <c:if test="${userLeave.result=='同意'}">
                            <b class="yes">${userLeave.result}</b>
                        </c:if>
                        <c:if test="${userLeave.result=='不同意'}">
                            <b class="no">${userLeave.result}</b>
                        </c:if>
                        <c:if test="${userLeave.result=='未审批'}">
                            <b class="none">${userLeave.result}</b>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
