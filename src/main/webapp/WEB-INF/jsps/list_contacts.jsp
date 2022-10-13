<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list</title>
</head>
<body>
	<a href="/viewLeadPage">Create New Lead</a>
	<h2>List all Contacts</h2>
	<table>

		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Source</th>
			<th>Billing</th>

		</tr>
		
		

		<c:forEach var="contact" items="${contacts}">
			<tr>
				<td><a href="findContactById?id=${contact.id}">${contact.firstName}</a></td>
				<td>${contact.lastName}</td>
				<td><a href="findContactById?id=${contact.id}">${contact.email}</a></td>
				<td>${contact.mobile}</td>
				<td>${contact.source}</td>
				<td><a href="generateBill?id=${contact.id}">generate bill</a></td>
				<td><a href="sendingEmail?id=${contact.id}">send Email</a></td>
				
				

			</tr>
		</c:forEach>

	</table>
</body>
</html>