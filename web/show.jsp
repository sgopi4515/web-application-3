<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show All Users</title>
</head>
<body>

<h2>All Users</h2>

<table border="1">
    <tr>
        <th>User ID</th>
        <th>Username</th>
        <th>Password</th>
    </tr>

<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection(
    "jdbc:mysql://localhost:3306/userdb",
    "root",
    "4515@Gopinath"
);

Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM userlogin");

while(rs.next()) {
%>
    <tr>
        <td><%= rs.getInt("userid") %></td>
        <td><%= rs.getString("username") %></td>
        <td><%= rs.getString("userpassword") %></td>
    </tr>
<%
}
con.close();
%>

</table>

<br>
<a href="admin.jsp">Back to Admin</a>

</body>
</html>
