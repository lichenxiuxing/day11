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
    <title>获取cookie</title>
</head>
<body>
    <%
        Cookie[] cookies=request.getCookies();
        if(cookies!=null){
            for(Cookie c:cookies){
                out.print(c.getName()+":"+c.getValue()+"</br>");

            }
        }
    %>
</body>
</html>
