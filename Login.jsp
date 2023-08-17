
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="beans.JDBCConn"/>
<%

String uname=request.getParameter("userid").trim();
String pass=request.getParameter("pass").trim();
String role=request.getParameter("role").trim();

Connection con=JDBCConn.getConn();
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT * FROM users WHERE uname='"+uname+"' and pass='"+pass+"'");
if(role.equals("S"))
{
if (rs.next()) 
{
response.sendRedirect("./staffindex.jsp");
}
else
{
response.sendRedirect("./LoginFail.html");
}
}
else if(rs.next()) 
{
response.sendRedirect("./memberindex.jsp");
}
else
{
response.sendRedirect("./LoginFail.html");
}

%>