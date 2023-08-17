<jsp:useBean id="lb" class="beans.LocationBean">
 <jsp:setProperty property="*" name="lb"/>
 <% lb.update(); %>
</jsp:useBean>

<%
response.sendRedirect("./LocSuccess.html");
%>
