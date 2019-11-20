<%--
  Created by IntelliJ IDEA.
  User: biyang
  Date: 2019/11/20
  Time: 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>设置cookie</title>
</head>
<body>
    <%
        Cookie cookie1=new Cookie("aaa","AAA");
        response.addCookie(cookie1);
        Cookie cookie2=new Cookie("bbb","BBB");
        response.addCookie(cookie2);
    %>
</body>
</html>
