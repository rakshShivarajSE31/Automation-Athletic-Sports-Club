<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-template" prefix="template" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-nested" prefix="nested" %>

<tiles:insert page="./Layout.jsp">
<tiles:put name="header" value="./Header.html"/>
<tiles:put name="menu" value="./Menu.jsp"/>
<tiles:put name="body" value="UpdateLocation.html"/>
<tiles:put name="footer" value="./Footer.html"/>
</tiles:insert>