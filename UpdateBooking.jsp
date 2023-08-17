<%@ page language="java" pageEncoding="ISO-8859-1"%>

<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from booking where bid='"+request.getParameter("bid")+"'");

%>

<FORM action="./UpdateBookingUpdate.jsp" method="post">
<PRE>
<h3 align="center"><font color="red">Update Form</font></h3>
  <%
	          if(rs.next())
	          {
	           %>

Booking ID     <input type="text" name="bid" readonly="true" value="<%=rs.getInt(1)%>">
User ID        <input type="text" name="userid" readonly="true" value="<%=rs.getInt(2)%>">
Activity ID    <input type="text" name="aid" value="<%=rs.getInt(3)%>">
BookingDate    <input type="text" name="bdate" value="<%=rs.getString(4)%>">
BookingTime    <input type="text" name="btime" value="<%=rs.getInt(5)%>">
<%
}
 %>
<input type="submit" name="submit" value="UPDATE">
</PRE>
</FORM>