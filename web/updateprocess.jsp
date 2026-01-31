<%@ page import="java.sql.*" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
String uname = request.getParameter("uname");
String pwd = request.getParameter("pwd");

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/userdb",
        "root",
        "4515@Gopinath"
    );

    PreparedStatement ps = con.prepareStatement(
        "UPDATE userlogin SET username=?, userpassword=? WHERE userid=?"
    );

    ps.setString(1, uname);
    ps.setString(2, pwd);
    ps.setInt(3, id);

    int i = ps.executeUpdate();

    if (i > 0) {
        out.println("<h3>Updated Successfully</h3>");
    } else {
        out.println("<h3>User ID not found</h3>");
    }

    con.close();
} catch (Exception e) {
    out.println(e);
}
%>
