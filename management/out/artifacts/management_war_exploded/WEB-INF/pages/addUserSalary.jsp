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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>发放工资</title>
    <%--<script language="JavaScript">--%>
        <%--function check() {--%>
            <%--var salary = document.getElementById("salary").value;--%>
            <%--if (salary==0) {--%>
                <%--alert("工资金额不能为0！")--%>
                <%--return false;--%>
            <%--}--%>
        <%--}--%>
    <%--</script>--%>
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

        .info b{
            color: #333333;
        }
    </style>
</head>
<body>
<div id="panel">
    <div class="panel_head">
        <h2>发放工资页面</h2>
    </div>
    <hr>
    <div class="panel_content">
        <table border="1" width="850" cellspacing="0" cellpadding="0">
            <tr>
                <td width="100" align="center">
                    账号
                </td>
                <td width="150" align="center">
                    姓名
                </td>
                <td width="150" align="center">
                    日期
                </td>
                <td width="100" align="center">
                    金额(元)
                </td>
                <td width="150" align="center">
                    发放日期
                </td>
                <td width="150">

                </td>
            </tr>
            <c:forEach items="${list}" var="userInfo">
                <fm:form action="../userSalary/addUserSalary" onsubmit="return check()" method="post">
                    <tr>
                        <td width="100" class="info" align="center">
                            <b>${userInfo.accountName}</b>
                            <input type="hidden" value="${userInfo.accountName}" name="accountName">
                        </td>
                        <td width="150" align="center">
                            <b>${userInfo.realName}</b>
                            <input type="hidden" value="${userInfo.realName}" name="realName">
                        </td>
                        <td width="150" align="center">
                            <input type="month" value="2020-05" name="MONTH">
                        </td>
                        <td width="100" align="center">
                            <input type="int" value="0" id="salary" name="salary">
                        </td>
                        <td width="150" align="center">
                            <input type="date" value="2020-05-24" name="salaryDate">
                        </td>
                        <td width="150" align="center">
                            <button class="subbtn" type="submit">发放</button>
                        </td>
                    </tr>
                </fm:form>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
