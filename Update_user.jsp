
<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from users where userid='"+request.getParameter("userid")+"'");

%>
<PRE>
<H3>        Update User Form</H3>
 <FORM action="./UpdateUserUpdate.jsp" method="post">
	          
	          <%
	          if(rs.next())
	          {
	           %>
  User ID     		<input type="text" name="userid" readonly="true" value="<%=rs.getInt(1)%>">
  User Name  		<input type="text" name="uname" value="<%=rs.getString(2)%>"> 
  Email      		<input type="text" name="email" value="<%=rs.getString(4)%>"> 
  Password   		<input type="password" name="pass" value="<%=rs.getString(3)%>"> 
  Mobile     		<input type="text" name="mobile" value="<%=rs.getString(5)%>"> 
  Address    		<input type="text" name="address" value="<%=rs.getString(6)%>">  
  Role				<input type="text" name="role" value="<%=rs.getString(7)%>">  
         	 		<%
         	 		
         	 		//response.sendRedirect("Success.html");
         	 		} 
         	 		/*else
         	 		{
         	 		response.sendRedirect("LoginFail.html");
         	 		}*/
         	 		%> 
         	 		
  <input type="submit" name="submit" value="Accept">
 </FORM>
</PRE>
