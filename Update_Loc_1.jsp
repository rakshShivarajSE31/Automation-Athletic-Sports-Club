<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select locid from location");

%>
<PRE>
<H3 align="center"> <font color="red"> Update Location </font></H3>
 <FORM action="./Update_Location.jsp" method="post">
<table>
<tr>
	<td>Location ID</td>
	<td>          <select name="locid">
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