<%--
  Created by IntelliJ IDEA.
  User: hawflakes
  Date: 2017/7/22
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/manage/css/index.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/manage/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/manage/css/index.css">
</head>
<body>
<div class="head">
    欢迎您，<strong>${user.username}</strong>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="content-left col-md-2">
            <ul class="nav">
                <li><a href="showitems.htm" target="right">代办事项列表</a></li>
                <li><a href="userinfo.htm" target="right">个人信息维护</a></li>
            </ul>
        </div>
        <div class="content-right col-md-9">
            <iframe src="showitems.htm" scrolling="auto" name="right" frameborder="0"></iframe>
        </div>
    </div>
</div>
<div class="footer">

</div>
</body>
</html>
