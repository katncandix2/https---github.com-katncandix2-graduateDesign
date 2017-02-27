<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 2017/2/9
  Time: 13:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:forEach items="${requestScope.user}" var ="emp">

        <c:out value="${emp.id}"></c:out>
        <c:out value="${emp.name}"/>
    </c:forEach>
    <a href="/add">add</a>
</body>
</html>
