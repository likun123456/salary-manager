<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2020/5/16
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>审批页面</title>
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
            width: 50%;
            height: 33px;
            border: 0;
            color: white;
            font-size: 18px;
            margin-top: 10px;
            /*margin-bottom: 10px;*/
            border-radius: 5px;
            background-color: #43CD80;
        }

        .subbtn:hover {
            width: 50%;
            height: 33px;
            border: 0;
            color: white;
            font-size: 18px;
            margin-top: 10px;
            /*margin-bottom: 10px;*/
            border-radius: 5px;
            background-color: #40E0D0;
        }
        .refresh{
            color: white;
            background-color: dodgerblue;
            width: 100%;
            height: 100%;
            padding: 2px;
            border-radius: 5px;
        }
        .refresh:hover{
            color: white;
            background-color: blue;
            width: 50px;
            height: 30px;
            padding: 2px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div id="panel">
    <h2>请假人员列表</h2>
    <hr/>
    <div class="panel_content">
        <table width="750" border="1" cellspacing="0" cellpadding="0">
            <tr align="center">
                <td width="150">
                    姓名
                </td>
                <td width="150">
                    请假日期
                </td>
                <td width="200" align="left">
                    请假原因
                </td>
                <td width="50">
                    请假天数
                </td>
                <td width="150">

                </td>
                <td width="150">
                    <a class="refresh" href="${pageContext.request.contextPath}/userLeave/findAll">刷新</a>
                </td>
            </tr>
            <c:forEach items="${list}" var="userLeave">
                <tr  align="center">
                    <td width="150">
                        <b>${userLeave.realName}</b>
                    </td>
                    <td width="150">
                            ${userLeave.leaveDate}
                    </td>
                    <td width="200" align="left">
                            ${userLeave.reason}
                    </td>
                    <td width="50">
                            ${userLeave.days}天
                    </td>
                    <td width="150">
                        <form action="leaveapproval" method="post">
                            <input type="hidden" value="${userLeave.id}" name="id">
                            <input class="subbtn" type="submit" value="同意" name="result">
                        </form>
                    </td>
                    <td width="150">
                        <form action="leaveapproval" method="post">
                            <input class="subbtn" type="submit" value="不同意" name="result">
                            <input type="hidden" value="${userLeave.id}" name="id">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
