<jsp:useBean id="bb" class="beans.BookingBean"/>

 <jsp:setProperty property="*" name="bb"/>
 <% bb.update(); %>
 
 
 <%response.sendRedirect("./Success.html");%>

