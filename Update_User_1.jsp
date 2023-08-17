<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select userid from users");

%>
<PRE>
<H3 align="center"> <font color="pink"> Update User </font></H3>
 <FORM action="./Update_user.jsp" method="post">
<table>
<tr>
	<td>User ID</td>
	<td>          <select name="userid">
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