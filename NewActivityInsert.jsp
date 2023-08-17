<jsp:directive.page import="java.sql.*"/>
<jsp:directive.page import="beans.JDBCConn"/>

<% 
 int uid =0;
 String  name = request.getParameter("aname");
 float f = Float.parseFloat(request.getParameter("price"));
 String dur = request.getParameter("duration");
 System.out.println(name+" "+f+" "+dur);

Connection con=JDBCConn.getConn();
Statement st = con.createStatement();
ResultSet rs =st.executeQuery("select max(aid) from activity");
if(rs.next())
 uid = rs.getInt(1);
uid++;
System.out.println("uid : "+uid);
 st = con.createStatement();
int i=st.executeUpdate("insert into activity values("+uid+",'"+name+"', "+f+",'"+dur+"')");

 if(i == 1)
  out.write("Recard insert succouss fully : "+i);
  else
   out.write("Recard insert succouss fully : "+i);
%> 
<jsp:include page="ActivitySuccess.html"/>