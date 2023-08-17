<jsp:useBean id="lb" class="beans.LocationBean">
 <jsp:setProperty name="lb" property="*"/>
 <%lb.delete();%>
</jsp:useBean>
<%response.sendRedirect("./DelSuccess.html");%>