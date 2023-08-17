
<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%

Connection con1=JDBCConn.getConn(); 
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("select userid from booking");

%>
<PRE>
<H3 align="center"> <font color="red">Activity Booking </font></H3>
<FORM action="./DisplayBookingsByDate.jsp" method="get">
<table align="center">
<tr>
	<td>User ID</td>
	<td>          <select name="userid">
                      <% while(rs1.next()){ %>
                      <option><%=rs1.getInt(1)%></option>
                      <%}%>  
                      </select>
        </td>
        </tr>
<tr>
<td><input type="submit" value="SUBMIT"/></td>
</tr>
</table>
</FORM>
</PRE> 