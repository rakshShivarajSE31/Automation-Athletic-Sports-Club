<jsp:useBean id="lb" class="beans.ActivityBean">
 <jsp:setProperty property="*" name="lb"/>
 <% lb.update(); %>
</jsp:useBean>

<%
response.sendRedirect("./ActivitySuccess.html");
%>
