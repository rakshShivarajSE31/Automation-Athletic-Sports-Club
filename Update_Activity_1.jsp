<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select aid from activity");

%>
<PRE>
<H3 align="center"> <font color="red"> Update Activity </font></H3>
 <FORM action="./Update_Activity.jsp" method="post">
<table>
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
        <td><input type="submit" value="UPDATE"></td>
        </tr>              
</table>