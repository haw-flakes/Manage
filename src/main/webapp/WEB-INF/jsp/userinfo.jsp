<%--
  Created by IntelliJ IDEA.
  User: hawflakes
  Date: 2017/7/22
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/manage/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/manage/css/userinfo.css">
</head>
<body>
<form action="updateUser.htm" method="post" accept-charset="utf-8">
    <h3>基本信息</h3>
    <div class="container-fluid">
        <div class="row">
            <span class="col-md-2">用户名</span>
            <input class="col-md-4" type="text" name="username" value="${user.username}">
            <span class="span-right col-md-2">密码</span>
            <input class="col-md-4" type="password" name="password" value="${user.password}">
        </div>
        <div class="row">
            <span class="col-md-2">性别</span>
            <input class="col-md-4" type="text" name="sex" value="${user.sex}">
            <span class="span-right col-md-2">年龄</span>
            <input class="col-md-4" type="text" name="age" value="${user.age}">
        </div>
        <div class="row">
            <span class="col-md-2">电话号码</span>
            <input class="col-md-4" type="phone" name="phonenumber" value="${user.phonenumber}">
        </div>
    </div>
    <h3>其他信息</h3>
    <div class="container-fluid">
        <div class="row">
            <span class="col-md-2">创建时间</span>
            <input class="col-md-4" type="text" name="creationdate" readonly="readonly" value="${user.creationdate}">
        </div>
        <div class="row">
            <span class="col-md-2">修改时间</span>
            <input class="col-md-4" type="text" name="lastupdatedate" readonly="readonly" value="${user.lastupdatedate}">
        </div>
        <div class="row">
            <span class="col-md-2">备注</span>
            <input class="col-md-4" type="text" name="comments" value="${user.comments}">
        </div>
        <div class="row" style="display: none;">
            <span class="col-md-2">userid</span>
            <input class="col-md-4" type="text" name="userid" value="${user.userid}">
        </div>
        <div class="row">
            <button type="submit">确认</button>
        </div>
    </div>
</form>
</body>
</html>
