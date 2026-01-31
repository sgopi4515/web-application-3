<%-- 
    Document   : addprocess
    Created on : 22 Dec 2025, 11:56:19 am
    Author     : gopinath.s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add user process/title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
String uname = request.getParameter("uname");
String pwd = request.getParameter("pwd");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/userdb",
    "root",
    "4515@Gopinath"
);

PreparedStatement ps =
con.prepareStatement("INSERT INTO userlogin VALUES (?,?,?)");
ps.setInt(1, id);
ps.setString(2, uname);
ps.setString(3, pwd);

ps.executeUpdate();
con.close();

out.println("User Added Successfully");
%>

    </body>
</html>
