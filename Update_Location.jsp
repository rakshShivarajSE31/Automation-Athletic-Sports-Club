<jsp:directive.page import="beans.JDBCConn,java.sql.*"/>
<%
Connection con=JDBCConn.getConn(); 
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from location");

%>
<PRE>
<H3 align="center"> <font color="red"> Update Location </font></H3>

 <FORM action="./UpdateLocationUpdate.jsp" method="post">
<%if(rs.next()){ %>
  Location ID  		<input type="text" name="locid" readonly="true" value="<%=rs.getInt(1)%>"> 
  Location Name  	<input type="text" name="locname" value="<%=rs.getString(2)%>"> 
  Address    		<input type="text" name="address" value="<%=rs.getString(3)%>"> 
			 		
  Phone Number  	<input type="text" name="phno" value="<%=rs.getString(4)%>"> 
  Opening Hours  	<input type="text" name="openinghours" value="<%=rs.getString(5)%>"> <FONT color="red">(Enter between 8 - 18)</FONT>
  <%} %>
  <input type="submit" name="submit" value="Update">
 </FORM>
</PRE>
