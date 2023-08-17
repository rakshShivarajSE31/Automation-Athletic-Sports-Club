<%@ page import="beans.*,java.sql.*" %>
<%
//String d=request.getParameter("d").toString();
int userid=Integer.parseInt(request.getParameter("userid").trim());
Connection con=JDBCConn.getConn();
Connection con1=JDBCConn.getConn();
Connection con2=JDBCConn.getConn();

Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
Statement stmt2=con.createStatement();

ResultSet rs=stmt.executeQuery("SELECT * FROM booking WHERE userid='"+userid+"'");
%>
<H3>Booking Details  <BR/><BR/><BR/></H3>
<table border="1" align="left">
<%
while(rs.next())
{
%>
<TR>
<%
ResultSet rs1=stmt1.executeQuery("SELECT * FROM users WHERE userid="+userid);
ResultSet rs2=stmt2.executeQuery("SELECT * FROM activity WHERE aid="+rs.getInt(3));
rs1.next();
rs2.next();
%>
<TR><TD> <b>Username</b></TD>     	<TD><%=rs1.getString(1)%></TD><TR>
<TR><TD> <b>Activity Name</b></TD> <TD><%=rs.getString(2)%></TD><TR>
<TR><TD> <b>Booking Date</b></TD>     	<TD> 	<%=rs.getString(4)%> </TD></TR>
<TR><TD> <b>Booking Time</b></TD>     	<TD> 	<%=rs.getInt(5)%></TD></TR>


<%
}
%>
</table>

