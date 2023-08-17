<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from activity where aid='"+request.getParameter("aid")+"'");

%>
<PRE>
<H3 align="center"><font color="red"> Update Activity Form</font></H3>
 <FORM action="./UpdateActivityUpdate.jsp" method="post">
	          
	          <%
	          if(rs.next())
	          {
	           %>
  Activity ID     	<input type="text" name="aid" readonly="true" value="<%=rs.getInt(1)%>">
  Activity Name  	<input type="text" name="aname" value="<%=rs.getString(2)%>"> 
  Price      		<input type="text" name="price" value="<%=rs.getInt(3)%>"> 
  Duration              <input type="text" name="duration" value="<%=rs.getString(4)%>">
  
         	 		<%
         	 		} 
         	 		%> 
         	 		
  <input type="submit" name="submit" value="UPDATE">
 </FORM>
</PRE>
