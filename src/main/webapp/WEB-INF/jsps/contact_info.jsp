<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>lead info</title>
</head>
<body>
	
	<h2>Contact Information</h2>
	
	First Name: ${contact.firstName}<br/>
	Last Name: ${contact.lastName}<br/>
	Email: ${contact.email}<br/>
	Mobile: ${contact.mobile}<br/>
	Source: ${contact.source}<br/>
	
	<form action="composeMail" method="post">
		<input type="hidden" name="email" value="${contact.email}"/>
		<input type="submit" value="send email"/>
	</form>

	
</body>
</html>