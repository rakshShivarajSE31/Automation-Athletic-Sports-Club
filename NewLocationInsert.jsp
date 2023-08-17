
<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="beans.JDBCConn"/>

<% 
 int uid =0;
 String  name = request.getParameter("locname");
 String add = request.getParameter("address");
 String dur = request.getParameter("duration");
 String ph = request.getParameter("phno");
 

Connection con=JDBCConn.getConn();
Statement st = con.createStatement();
ResultSet rs =st.executeQuery("select max(locid) from location");
if(rs.next())
 uid = rs.getInt(1);
uid++;
System.out.println("uid : "+uid);
 st = con.createStatement();
int i=st.executeUpdate("insert into location values("+uid+",'"+name+"', '"+add+"','"+ph+"','"+dur+"')");

 if(i == 1)
  out.write("Recard insert succouss fully : "+i);
  else
   out.write("Recard insert succouss fully : "+i);
%> 
<jsp:include page="LocSuccess.html"/>