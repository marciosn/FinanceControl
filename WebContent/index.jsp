<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

</head>
<body id="content">

	<jsp:include page="./WEB-INF/templates/navbar.jsp" />
	<jsp:include page="./WEB-INF/templates/sidemenu.jsp" />
	<button class="menu-button" id="open-button">Open Menu</button>
	
	<div class="container-fluid">
		
	</div>

</body>
<script type="text/javascript" charset="utf-8">
$(document).ready(function() {
	
    content = document.querySelector( "#content" ),
	openbtn = document.querySelector( "#open-button" ),
	closebtn = document.querySelector( "#close-button" ),
	
	sideMenu(content, openbtn, closebtn);
} );

</script>
</html>