<%@ page errorPage="./Error.jsp" %>
<jsp:useBean id="bb" class="beans.BookingBean">
 <jsp:setProperty property="*" name="bb"/>
 <% bb.insert(); %> 
  <%
  double price=0, amt=0;
  java.sql.Connection con=beans.JDBCConn.getConn();
  java.sql.Statement stmt=con.createStatement();
  java.sql.ResultSet rs=stmt.executeQuery("SELECT price FROM activity WHERE aid="+Integer.parseInt(request.getParameter("aid").trim()));
  if(rs.next())
  {
  price=rs.getDouble(1);
  }
  rs=stmt.executeQuery("SELECT amt FROM useraccount WHERE userid="+Integer.parseInt(request.getParameter("userid").trim()));
  if(rs.next())
  {
  amt=rs.getDouble(1);
  amt=amt+price;
  stmt.executeUpdate("UPDATE useraccount SET amt="+amt+" WHERE userid="+Integer.parseInt(request.getParameter("userid").trim()));
  }
  else
  {
  stmt.executeUpdate("INSERT INTO useraccount VALUES("+Integer.parseInt(request.getParameter("userid").trim())+","+amt+")");
  }
  %>
</jsp:useBean>
 <%
 response.sendRedirect("./Booking_Succ.html");
  %>
