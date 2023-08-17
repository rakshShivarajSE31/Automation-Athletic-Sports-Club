<jsp:useBean id="bb" class="beans.BookingBean">
 <jsp:setProperty property="*" name="lb"/>
 <% bb.insert(); %>
</jsp:useBean>

<%
response.sendRedirect("./ActivitySuccess.html");
%>
