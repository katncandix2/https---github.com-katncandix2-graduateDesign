<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC Demo 首页</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<h1>这里是SpringMVC Demo首页</h1>

<h3>出现此页面，说明配置成功。</h3>
<a href="/hello1">hello</a>
<br/>
<a href="/PathVarialable/1">Path</a>
<br/>
<a href="/CookieValue">CookieValue</a>
<br/>
<form action="/testPojo" method="post">
    name<input name="name" type="text"/>
    password<input type="password" name="password"/>
    city<input type="text" name="address.city"/>
    province<input type="text" name="address.province"/>
    <input type="submit" name="submit"/>
</form>


<br/>

<a href="/testServlet">testServlet</a>

<br/>


<a href="/modelAndView"> testModelAndView</a>
<br/>

<a href="/testMap"> testMap</a>
<br/>
<a href="/testSessionAttriabuilt"> testSessionAttriabuilt</a>
<a href="/shuzimeiti">数字媒体</a>
<br/>

<a  href="/BootStrapTemp"> BootStrapTemp</a>

<form action="/testModelAttriabute" method="post">
   <input type="hidden" name="id" value="1"/>
    username<input type="text" name = "name" value="Tom"/>
    <br/>
    email:<input type="text" name = "email" value="guruiqin@qq.com" />
    <br/>
    age:<input type  = "text" name = "age" value="12"/>
    <br/>
    password:<input type="password" name="password" value="password">
    <input type="submit" value="submit">
</form>
<br><br>
<jsp:include page="test.jsp"/>

<form action="/testSessionScope" method="post">
    <input type="text" name = "name"/>

    <input type = "submit" value="submit">
</form>

<br><br>
<a href="/NavBar">修改导航栏</a>
<a href="/Playvideos">测试html5播放器</a>
<br></br>

    <a href="/testJSTL">test Jstl</a>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="myjs/jquery-3.1.1.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="myjs/bootstrap.min.js"></script>
</body>
</html>