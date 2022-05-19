<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2020/5/20
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>员工工资事务管理系统</title>
</head>
<body>
${sessionScope.ul} <br>
<a href="${pageContext.request.contextPath}/userInfo/addUserInfoForm" target="main">完善信息</a><br/><br/>
<a href="${pageContext.request.contextPath}/userInfo/searchUserInfo" target="main">个人信息</a><br/><br/>
<a href="${pageContext.request.contextPath}/userClock/addUserClock" target="main">打卡</a><br/><br/>
<a href="${pageContext.request.contextPath}/userLeave/UserLeave" target="main">员工请假</a><br/><br/>
<a href="${pageContext.request.contextPath}/userLeave/findAll" target="main">审批</a><br/><br/>
<a href="${pageContext.request.contextPath}/userSalary/UserSalary" target="main">查看工资</a><br/><br/>
<a href="${pageContext.request.contextPath}/form/addRenShi"  target="main">添加专员</a><br/><br/>
<a href="${pageContext.request.contextPath}/userSalary/addUserSalaryForm" target="main">发放工资</a><br/><br/>
<a href="${pageContext.request.contextPath}/userInfo/allUserInfo" target="main">查看员工信息</a><br/><br/>
<a href="${pageContext.request.contextPath}/userClock/allUserClock" target="main">查看考勤信息</a><br/><br/>
<a href="${pageContext.request.contextPath}/userLeave/searchUserLeave" target="main">查看请假信息</a><br/><br/>
</body>
</html>
