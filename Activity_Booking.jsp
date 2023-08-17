<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select aid from activity");
Connection con1=JDBCConn.getConn(); 
Statement stmt1=con1.createStatement();
ResultSet rs1=stmt1.executeQuery("select userid from users");

%>
<PRE>
<H3 align="center"> <font color="red">Activity Booking </font></H3>
 <FORM action="./NewBookingInsert.jsp" method="post">
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
	<td>Activity ID</td>
	<td>          <select name="aid">
                      <% while(rs.next()){ %>
                      <option><%=rs.getInt(1)%></option>
                      <%}%>  
                      </select>
        </td>
        </tr>
<tr>
<td>Booking Date</td>
<td><input type="text" name="bdate" value=""></td>
</tr>
<tr>
<td>Booking Time</td>
<td><input type="text" name="btime" value=""><font color="red">Enter 0-24hrs(ex:13)</font></td>
</tr>

        <tr>
        <td><input type="submit" value="INSERT"></td>
        </tr>              
</table>