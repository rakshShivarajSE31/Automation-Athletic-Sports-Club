<jsp:useBean id="lb" class="beans.ActivityBean">
 <jsp:setProperty name="lb" property="*"/>
 <%lb.delete();%>
</jsp:useBean>
<%
response.sendRedirect("./ActivityDelSuccess.html");
%>