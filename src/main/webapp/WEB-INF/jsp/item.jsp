<%--
  Created by IntelliJ IDEA.
  User: hawflakes
  Date: 2017/7/22
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>待办事项</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/manage/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/manage/css/works.css">
</head>
<body>
<div class="head">
    <div class="container-fluid">
        <ul class="nav row">
            <li><a class="col-md-2" href="add.htm">新增</a></li>
        </ul>
    </div>
</div>
<div class="body">
    <div class="content container-fluid">
        <div class="row">
            <div class="col-md-1">
                <span>序号</span>
            </div>
            <div class="col-md-1">
                <span>标题</span>
            </div>
            <div class="col-md-3">
                <span>内容</span>
            </div>
            <div class="col-md-1">
                <span>优先级</span>
            </div>
            <div class="col-md-2">
                <span>创建时间</span>
            </div>
            <div class="col-md-2">
                <span>更新时间</span>
            </div>
            <div class="col-md-2">
                <span>操作</span>
            </div>
        </div>

        <c:forEach items="${itemList}" var="item">
            <div class="row">
                <div class="col-md-1">
                    <span>${item.itemid}</span>
                </div>
                <div class="col-md-1">
                    <span>${item.itemtitle}</span>
                </div>
                <div class="col-md-3">
                    <span>${item.itemcontent}</span>
                </div>
                <div class="col-md-1">
                    <span>${item.priority}</span>
                </div>
                <div class="col-md-2">
                    <span>${item.creationdate}</span>
                </div>
                <div class="col-md-2">
                    <span>${item.lastupdatedate}</span>
                </div>
                <div class="col-md-1">
                    <a href="update.htm?itemid=${item.itemid}">更新</a>
                </div>
                <div class="col-md-1">
                    <a href="del.htm?itemid=${item.itemid}">删除</a>
                </div>
            </div>
        </c:forEach>

    </div>
</div>
</body>
</html>
