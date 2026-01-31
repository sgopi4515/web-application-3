<%-- 
    Document   : deleteprocess
    Created on : 22 Dec 2025, 11:47:09 am
    Author     : gopinath.s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete user process</title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
<%
int id = Integer.parseInt(request.getParameter("id"));

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/userdb",
    "root",
    "4515@Gopinath"
);

PreparedStatement ps =
con.prepareStatement("DELETE FROM userlogin WHERE userid=?");
ps.setInt(1, id);

ps.executeUpdate();
con.close();

out.println("User Deleted");
%>
    </body>
</html>
