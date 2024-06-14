<%@ page import="org.vitalii.fedyk.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: fedyk_vitalii
  Date: 13.06.2024
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show all users</title>
</head>
<body>
<%@include file="header.html"%>
<br><br>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Username</th>
        <th>Password</th>
        <th colspan="3">Operations</th>
    </tr>

    <%
        for (User user : (List<User>) request.getAttribute("users")) {
    %>
    <tr>
        <td><%=user.getId()%></td>
        <td><%=user.getUsername()%></td>
        <td><%=user.getPassword()%></td>
        <td>
            <a href="/users/read?id=<%=user.getId()%>">Read</a>
        </td>
        <td>
            <a href="/users/update?id=<%=user.getId()%>">Update</a>
        </td>
        <td>
            <a href="/users/delete?id=<%=user.getId()%>">Delete</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
