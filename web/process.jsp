<%-- 
    Document   : process
    Created on : 22 Dec 2025, 11:58:28 am
    Author     : gopinath.s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login process</title>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
<%
String uname = request.getParameter("uname");
String pwd   = request.getParameter("pwd");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/userdb",
        "root",
        "4515@Gopinath"
    );

    PreparedStatement ps = con.prepareStatement(
        "SELECT * FROM userlogin WHERE username=? AND userpassword=?"
    );
    ps.setString(1, uname);
    ps.setString(2, pwd);

    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        response.sendRedirect("admin.jsp");
    } else {
        out.println("<h3>Invalid Username or Password</h3>");
        out.println("<a href='index.jsp'>Back</a>");
    }

    con.close();
} catch (Exception e) {
    out.println(e);
}
%>
    </body>
</html>
