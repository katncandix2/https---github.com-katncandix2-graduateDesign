<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE >
<html  lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>数字媒体学习网站</title>
    <link rel="icon" href="http://v3.bootcss.com/favicon.ico">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="mycss/mycss.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src ="myjs/holder.js"></script>

</head>
<body>


<!-- 旋转木马 -->
<div class="carousel slide" data-ride = "carousel" id="slideshow">

    <ol class="carousel-indicators">
        <li data-target="#slideshow" data-slide-to="0" class="active"></li>
        <li data-target="#slideshow" data-slide-to="1"></li>

    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <a href="#">
                <img src="img/background/Antelope Canyon.jpg" alt="" >
            </a>
            <div class="carousel-caption">
                <h2>your name</h2>
                <p>hello world</p>
            </div>

        </div>

        <div class="item">
            <a href="#">
                <img src="img/background/Bahamas Aerial.jpg" alt="" >
            </a>
            <div class="carousel-caption">
                <h2>your name2</h2>
                <p>hello world2</p>
            </div>

        </div>

        <!-- 左右切换按钮根据#slideshow 切换 -->
        <a href="#slideshow" class="left carousel-control" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>

        <a href="#slideshow" class="right carousel-control" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>


</body>
</html>