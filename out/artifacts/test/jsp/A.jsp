<%--
  Created by IntelliJ IDEA.
  User: biyang
  Date: 2019/11/19
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
</head>

<body>
    <table border="1" width="60%">
        <tr>
            <td>姓名</td>
            <td>年龄</td>
        </tr>
        <% for(int i=0;i<10;i++){%>
        <tr>
            <td>王五</td>
            <td>19</td>
        </tr>
        <%}%>
    </table>
</body>
</html>
