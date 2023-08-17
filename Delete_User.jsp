<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select userid from users");

%>

<html>
<PRE>
<H3 align="center"><font color="red">Delete User Form</font></H3>
<body>
<form action="./DeleteUser.jsp" method="post">
User ID<select name="userid">
                      <% while(rs.next()){ %>
                      <option><%=rs.getInt(1)%></option>
                      <%}%>  
                      </select>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name="submit" value="DELETE">
</form>
</body>
</PRE>
</html>