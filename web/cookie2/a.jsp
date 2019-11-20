<%--
  Created by IntelliJ IDEA.
  User: biyang
  Date: 2019/11/20
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除cookie</title>
</head>
<body>
<% Cookie cookie=new Cookie("aaa","AAA");
    cookie.setMaxAge(0);
    response.addCookie(cookie);%>
</body>
</html>
