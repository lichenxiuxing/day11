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
    <title>登录页面</title>
</head>
<body>
    <%
        String uname="";
        Cookie[] cookies=request.getCookies();
        if(cookies!=null){
            for(Cookie c:cookies){
                if("uname".equalsIgnoreCase(c.getName())){
                    uname=c.getValue();
                }
            }
        }
    %>

    <% String message="";
        String msg=(String)request.getAttribute("msg");
        if(msg!=null){
            message=msg;
        }

    %>
    <%=message%>
    <form action="/BServlet" method="post">
        用户名:<input type="text" name="name" value="<%=uname%>"> <br/>
        密  码:<input type="password" name="psd"><br/>
        <input type="submit" value="提交">
    </form>
</body>
</html>
