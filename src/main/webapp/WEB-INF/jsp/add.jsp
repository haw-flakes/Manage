<%--
  Created by IntelliJ IDEA.
  User: hawflakes
  Date: 2017/7/22
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增事项</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/manage/css/bootstrap.min.css">
    <style type="text/css" media="screen">
        form{
            margin-top: 30px;
        }
        .row{
            margin-top: 20px;
            margin-bottom: 20px;
        }
        button{
            margin: 10px 30px;
        }
    </style>
</head>
<body>
<form action="doadd.htm" method="get" accept-charset="utf-8">
    <div class="container-fluid">
        <div class="row">
            <span class="col-md-1 col-md-offset-1">标题</span>
            <input class="col-md-4" type="text" name="itemtitle">
        </div>
        <div class="row">
            <span class="col-md-1 col-md-offset-1">内容</span>
            <input class="col-md-4" type="text" name="itemcontent">
        </div>
        <div class="row">
            <span class="col-md-1 col-md-offset-1">优先级</span>
            <input class="col-md-4" type="phone" name="priority">
        </div>
        <div class="row">
            <button type="submit" class="col-md-1 col-md-offset-2">确定</button>
            <button type="reset" class="col-md-1 ">重置</button>
        </div>
    </div>
</form>

</body>
</html>
