<% 
Object o=session.getAttribute("USERID");
if(o!=null)
{
 String role=o.toString(); 
 out.println("Welcome "+role);
}
%>
<A href="Logout.jsp">Logout</A>
<UL>
<LI><A href="./NewUser.html">NewUser</A></LI>
<LI><A href="./Update_User_1.jsp">  Update User</A></LI>
<LI><A href="./DisplayBookings.html">Display Booking</A></LI>
<LI><A href="./UpdateBooking_1.jsp">UpdateBooking</A></LI>
</UL>
