<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 2017/2/3
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="zh-CN">
    <title>Title</title>
    <link rel="icon" href="http://v3.bootcss.com/favicon.ico">
    <link rel="stylesheet" href="mycss/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="mycss/mycss.css">
</head>
<body>
    <jsp:include page="NavigationBar.jsp"/>



    <video width="320" height="240" controls="controls">

        <source src="videos/1.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
    <div id = "mydiv" ></div>
    <script src="myjs/jquery-3.1.1.min.js"></script>
    <script src="myjs/bootstrap.min.js"></script>
</body>
</html>
