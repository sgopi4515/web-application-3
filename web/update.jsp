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
        <title>Update user</title>
    </head>
    <body>
<form action="updateprocess.jsp">
    User ID : <input type="text" name="id"><br><br>
    New Username : <input type="text" name="uname"><br><br>
    New Password : <input type="text" name="pwd"><br><br>
    <input type="submit" value="Update">
</form>
    </body>
</html>
