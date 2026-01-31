<%-- 
    Document   : add
    Created on : 22 Dec 2025, 6:56:47 am
    Author     : gopinath.s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search user</title>
    </head>
    <body> 
<!DOCTYPE html>
<html>
<head>
    <title>Search User</title>
</head>
<body>

<h2>Search User</h2>

<form action="searchprocess.jsp" method="post">
    User ID:
    <input type="text" name="id" required>
    <input type="submit" value="Search">
</form>

<a href="admin.jsp">Back to Admin</a>

    </body>
</html>