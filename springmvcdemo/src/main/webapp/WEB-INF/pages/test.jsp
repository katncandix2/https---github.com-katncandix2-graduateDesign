<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 2017/1/17
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <a href="/NextTest">NextTest.jsp</a>
    request:${requestScope.user.name}
    session:${sessionScope.user.name}
</body>
</html>
