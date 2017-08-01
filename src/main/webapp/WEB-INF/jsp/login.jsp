<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/manage/css/login.css">
</head>
<body>
<h1>个人待办事项管理系统</h1>
<div class="login">
    <form  action="dologin.htm" method="post" accept-charset="utf-8">
        <div class="name">
            <div>用户名:</div>
            <input type="text" name="username" value="" placeholder="用户名">
        </div>
        <div class="password">
            <div>密码:</div>
            <input type="text" name="password" value="" placeholder="密码">
        </div>
        <div class="subbtn">
            <button type="submit">登录</button>
            <button type="reset">重置</button>
        </div>
    </form>
</div>
</body>
</html>