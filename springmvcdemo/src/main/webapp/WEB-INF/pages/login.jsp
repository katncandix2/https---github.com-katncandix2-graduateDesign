<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@page isELIgnored="false"%>
<html lang="zh-CN">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://v3.bootcss.com/favicon.ico">
    <title>登录页面</title>
    <link href="mycss/bootstrap.min.css" rel="stylesheet">
    <link href="mycss/signin.css" rel="stylesheet">
    <script src="myjs/ie-emulation-modes-warning.js"></script>
</head>

<body>

<div class="container">

    <form class="form-signin" role="form" action="/CheckLogin" method="post">
        <h2 class="form-signin-heading">请登录</h2>
        <input type="email" class="form-control" placeholder="邮箱地址" required="required" autofocus="" name="email">
        <input type="password" class="form-control" placeholder="密码" required="required" name="password">
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> 记住我
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    </form>

</div>
<script src="myjs/ie10-viewport-bug-workaround.js"></script>
</body></html>