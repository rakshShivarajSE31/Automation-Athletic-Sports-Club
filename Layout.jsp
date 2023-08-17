<%@ taglib uri="http://jakarta.apache.org/struts/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	left:101px;
	top:50px;
	width:648px;
	height:52px;
	z-index:1;
	background-color: #9999FF;
}
#Layer2 {
	position:absolute;
	left:101px;
	top:111px;
	width:148px;
	height:286px;
	z-index:2;
	background-color: #9999FF;
}
#Layer3 {
	position:absolute;
	left:100px;
	top:405px;
	width:650px;
	height:36px;
	z-index:3;
	background-color: #9999FF;
}
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #FFFFFF;
}
#Layer4 {
	position:absolute;
	left:254px;
	top:111px;
	width:497px;
	height:286px;
	z-index:4;
}
-->
</style>
</head>

<body>
<div id="Layer1">
  <div align="center" class="style1"><tiles:insert attribute="header"/></div>
</div>
<div id="Layer2"><strong><tiles:insert attribute="menu"/></strong></div>
<div id="Layer3">
  <div align="center"><strong><tiles:insert attribute="footer"/></strong></div>
</div>
<div id="Layer4" style="border-style:solid;border-width:2px;overflow:auto"><strong><tiles:insert attribute="body"/></strong></div>
</body>
</html>
