<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select aid from activity");

%>

<html>
<PRE>
<H3 align="center"><font color="red">Delete Activity</font></H3>
<body>
<form action="./DeleteActivityDelete.jsp" method="post">
Activity ID<select name="aid">
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