<%--
  Created by IntelliJ IDEA.
  User: biyang
  Date: 2019/11/20
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成功页面2</title>
</head>
<body>
<%
    String name=(String)session.getAttribute("name");
    if(name==null){
        request.setAttribute("msg","请您先登录");
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }else {
        out.print("欢迎回来"+name);
    }

%>
</body>
</html>
