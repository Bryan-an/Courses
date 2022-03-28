<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css ">

</head>
<body>
	<h1>Customers List</h1>
	
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Last name</th>
			<th>Email</th>
			<th>Modify</th>
		</tr>
		
		<c:forEach var="customerTemp" items="${customers}">
		
			<!-- Link to update -->
			<c:url var="linkUpdate" value="/customer/showFormUpdate">
				<c:param name="customerId" value="${customerTemp.id }"/>
			</c:url>
			
			<!-- Link to delete -->
			<c:url var="linkDelete" value="/customer/delete">
				<c:param name="customerId" value="${customerTemp.id }"/>
			</c:url>
		
			<tr>
				<td>${customerTemp.name}</td>
				<td>${customerTemp.lastName}</td>
				<td>${customerTemp.email}</td>
				
				<td>
					<a href="${linkUpdate}">
						<input type="button" value="Modify"/>
					</a>
				</td>
				<td>
					<a href="${linkDelete}">
						<input type="button" value="Delete" 
							onclick="if(!(confirm('You are going to delete a record. Are you sure?'))) return false"/>
					</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<br/>
	
	<input type="button" value="Add Customer" onclick="window.location.href='showFormAdd'; return false;"/>
</body>
</html>