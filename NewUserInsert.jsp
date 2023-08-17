<%
String pass=request.getParameter("pass").trim();
String repass=request.getParameter("repass").trim();
if(pass.equals(repass))
{
%>
<jsp:useBean id="ub" class="beans.UsersBean"/>

 <jsp:setProperty property="*" name="ub"/>
 <% ub.insert(); %>
 <%response.sendRedirect("./Success.html");%>
<%
}
else
{

response.sendRedirect("./LoginFail.html");

}
%>
