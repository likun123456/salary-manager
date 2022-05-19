<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2020/5/19
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>企业人事管理系统</title>
    <script language="JavaScript">
        function more() {
            // confirm("更多功能，敬请期待！")
            window.parent.location.href = "${pageContext.request.contextPath}/userLogin/index"
        }
    </script>
    <style>
        .container {
            width: 220px;
            height: 100%;
            margin: auto;
            position: absolute;
        }

        .leftsidebar_box {
            width: 220px;
            height: 100%;
            background-color: #f2f2f2;
        }

        .leftsidebar_box dt {
            background-color: #f9f9f9;
            color: #333;
            font-size: 14px;
            position: relative;
            line-height: 44px;
            cursor: pointer;
            border-bottom: 1px solid #dedede;
            border-right: 1px solid #dedede;
            padding-left: 40px;
        }

        .leftsidebar_box dd {
            display: none;
            position: relative;
            background-color: white;
            padding-left: 65px;
            border-bottom: 1px solid #dedede;
            border-right: 1px solid #dedede;
        }

        .leftsidebar_box dd a {
            color: #333;
            line-height: 42px;
            width: 100%;
            height: 100%;
            display: inline-block;
            cursor: pointer;
        }

        .leftsidebar_box .line {
            background-color: #f9f9f9;
            color: #333;
            font-size: 14px;
            position: relative;
            line-height: 44px;
            cursor: pointer;
            border-bottom: 1px solid #dedede;
            border-right: 1px solid #dedede;
            padding-left: 40px
        }

        * {
            padding: 0;
            margin: 0;
            font-family: "Microsoft YaHei";
            font-size: 14px;
        }

        a {
            text-decoration: none;
        }

        li {
            list-style-type: none;
        }

        .line:hover {
            background-color: blue;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
<div class="container">
    <div id="mymenu" class="leftsidebar_box">
        <a href="../form/main" target="main">
            <div class="line">
                首页
            </div>
        </a>
        <c:if test="${sessionScope.ul.userType==2}">
            <a href="${pageContext.request.contextPath}/userClock/addUserClock" target="main">
                <div class="line">
                    打卡
                </div>
            </a>
        </c:if>
        <c:if test="${sessionScope.ul.userType==2}">
            <a href="${pageContext.request.contextPath}/userLeave/UserLeave" target="main">
                <div class="line">
                    请假
                </div>
            </a>
        </c:if>
        <c:if test="${sessionScope.ul.userType==1}">
            <a href="${pageContext.request.contextPath}/userLeave/findAll" target="main">
                <div class="line">
                    请假审批
                </div>
            </a>
        </c:if>
        <c:if test="${sessionScope.ul.userType==2}">
            <a href="${pageContext.request.contextPath}/userSalary/UserSalary" target="main">
                <div class="line">
                    查看工资
                </div>
            </a>
        </c:if>
        <c:if test="${sessionScope.ul.userType==0}">
            <a href="${pageContext.request.contextPath}/form/addRenShi" target="main">
                <div class="line">
                    添加人事专员
                </div>
            </a>
        </c:if>
        <c:if test="${sessionScope.ul.userType==0}">
            <a href="${pageContext.request.contextPath}/userSalary/addUserSalaryForm" target="main">
                <div class="line">
                    发放工资
                </div>
            </a>
        </c:if>
        <c:if test="${sessionScope.ul.userType!=2}">
            <a href="${pageContext.request.contextPath}/userInfo/allUserInfo" target="main">
                <div class="line">
                    查看员工信息
                </div>
            </a>
        </c:if>
        <c:if test="${sessionScope.ul.userType!=2}">
            <a href="${pageContext.request.contextPath}/userClock/allUserClock" target="main">
                <div class="line">
                    查看考勤信息
                </div>
            </a>
        </c:if>
        <c:if test="${sessionScope.ul.userType==2}">
            <a href="${pageContext.request.contextPath}/userInfo/searchUserInfo" target="main">
                <div class="line">
                    个人信息
                </div>
            </a>
        </c:if>
        <c:if test="${sessionScope.ul.userType==2}">
            <a href="${pageContext.request.contextPath}/userLeave/searchUserLeave" target="main">
                <div class="line">
                    请假结果
                </div>
            </a>
        </c:if>
        <a onclick="more()" target="main">
            <div class="line">
                退出
            </div>
        </a>
    </div>
</div>
</body>
</html>
