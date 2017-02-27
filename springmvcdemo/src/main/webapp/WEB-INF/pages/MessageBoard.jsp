<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<c:set var="test" value="${requestScope.messagelist}" scope ="application"/>
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 2017/2/9
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="mycss/bootstrap.min.css">
    <link rel="stylesheet" href="mycss/Message.css">
</head>
<body>
    <jsp:include page="NavigationBar.jsp"/>
   <div id="content">
        <div id="post">
            <form action="/SaveMessage" method="post">
                <!--文本信息-->
                <textarea id ="Message" name ="message" class="transition"></textarea>

                <input id="MessageSave" class="btn" type="submit" value="提交"/>
            </form>
        </div>
        <div id="comment">
                <c:forEach items="${requestScope.messagelist}" var="msg">
                        <p>
                            <c:out value="${msg.message}"/>

                        </p>
                </c:forEach>
        </div>
    </div>
    <div>
        <button    hidden id = "testButton">testButton</button>
    </div>

    <script src = "myjs/jquery-3.1.1.min.js"></script>
    <script src = "myjs/bootstrap.min.js"></script>
    <script language="JavaScript" type="text/javascript">
        $(document).ready(function () {
                $("#MessageSave").click(function () {
                    //判断textArea中内容是否为空
                    var text = $("#Message").val();
                    if(!text){
                        alert("您提交的内容为空，请填写后再提交");
                        return false;
                    }

                })
            }
        );

    </script>
    <%--<script src = "myjs/MessageBoard.js"></script>--%>
</body>
</html>
