<%--
  Created by IntelliJ IDEA.
  User: biyang
  Date: 2019/11/20
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!--session对象名不一致也可以共用域-->
    <% HttpSession httpSession=request.getSession();
    String s= (String)httpSession.getAttribute("aaa");
            out.print(s);%>
</body>
</html>
