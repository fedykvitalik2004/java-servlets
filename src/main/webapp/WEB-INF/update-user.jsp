<%@ page import="org.vitalii.fedyk.User" %><%--
  Created by IntelliJ IDEA.
  User: fedyk_vitalii
  Date: 14.06.2024
  Time: 00:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update a user</title>
</head>
<body>
<form action="/users/update" method="post">
    <%
        User user = (User) request.getAttribute("user");
    %>
    <%@include file="header.html"%>
    <br><br>
    <table>
        <tr>
            <td>
                <label for="id">Id: </label>
            </td>
            <td>
                <input type="text" id="id" name="id" value="<%=user.getId()%>" disabled>
            </td>
        </tr>
        <tr>
            <td>
                <label for="username">Username: </label>
            </td>
            <td>
                <input type="text" id="username" name="username" value="<%=user.getUsername()%>">
            </td>
        </tr>
        <tr>
            <td>
                <label for="password">Password: </label>
            </td>
            <td>
                <input type="password" id="password" name="password" value="<%=user.getPassword()%>">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Update">
            </td>
            <td>
                <input type="submit" value="Clear">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
