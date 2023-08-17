<jsp:useBean id="lb" class="beans.BookingBean">
 <jsp:setProperty property="*" name="lb"/>
 <% lb.update(); %>
</jsp:useBean>
<%
response.sendRedirect("Booking_Succ.html");
%>
