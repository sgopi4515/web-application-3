<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search Result</title>
</head>
<body>

<h2>Search Result</h2>

<%
int id = Integer.parseInt(request.getParameter("id"));

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/userdb",
    "root",
    "4515@Gopinath"
);

PreparedStatement ps =
con.prepareStatement("SELECT * FROM userlogin WHERE userid=?");
ps.setInt(1, id);

ResultSet rs = ps.executeQuery();

if (rs.next()) {
%>
<table border="1">
<tr>
    <th>ID</th>
    <th>Username</th>
    <th>Password</th>
</tr>
<tr>
    <td><%=rs.getInt("userid")%></td>
    <td><%=rs.getString("username")%></td>
    <td><%=rs.getString("userpassword")%></td>
</tr>
</table>
<%
} else {
    out.println("<h3>User not found</h3>");
}
con.close();
%>

<a href="search.jsp">Search Again</a>

</body>
</html>
