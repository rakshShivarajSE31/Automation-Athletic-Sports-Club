<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select bid from booking");

%>
<PRE>
<H3 align="center"> <font color="red"> Update Booking </font></H3>
 <FORM action="./UpdateBooking.jsp" method="post">
<table>
<tr>
	<td>Booking ID</td>
	<td>          <select name="bid">
                      <% while(rs.next()){ %>
                      <option><%=rs.getInt(1)%></option>
                      <%}%>  
                      </select>
        </td>
        </tr>
        <tr>
        <td><input type="submit" value="UPDATE"></td>
        </tr>              
</table>