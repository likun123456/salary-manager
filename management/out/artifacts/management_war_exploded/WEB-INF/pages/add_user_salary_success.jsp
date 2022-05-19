<%--
  Created by IntelliJ IDEA.
  User: zhang
  Date: 2020/5/16
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function mainForm() {
            location.href="../userSalary/addUserSalaryForm";
        }
    </script>
    <style>
        a, address, b, big, blockquote, body, center, cite, code, dd, del, div, dl, dt, em, fieldset, font, form, h1, h2, h3, h4, h5, h6, html, i, iframe, img, ins, label, legend, li, ol, p, pre, small, span, strong, u, ul, var{
            padding: 0;
            margin: 0;
        }
        *{
            padding: 0;
            margin: 0;
        }
        body{
            padding-top: 200px;
            background-color: #dddddd;
            text-align: center;
        }
        #panel{
            /*最大的容器距离顶部50个像素*/
            margin-top: 25px;
            display: inline-block;
            background-color: white;
            border: 1px solid #dddddd ;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px #333333;
            width: 260px;
        }
        /*面板头部*/
        #panel .panel-top{
            alignment: left;

            font-size: 11px;
            font-family: 微软雅黑;
            font-weight: bold;
            padding: 10px 0;
            width: 230px;
            margin: 0 auto;
        }
        /*面板中间*/
        #panel .panel-content{
            margin-top: 20px;
        }
        #panel .login button{
            margin-top: 20px;
            width: 90%;
            height: 33px;
            border: 0;
            color: white;
            font-size: 18px;
            margin-bottom: 10px;
            border-radius: 3px;
            background-color: #43CD80;
        }
    </style>
</head>
<body>
<!--面板-->
<div id="panel">
    <!--面板的头部-->
    <div class="panel-top">
        <h1>发放成功!</h1>
    </div>
    <div class="panel-content">
        <div class="login">
            <button onclick="mainForm()">返回发放界面</button>
        </div>
    </div>
</div>
</body>
</html>
