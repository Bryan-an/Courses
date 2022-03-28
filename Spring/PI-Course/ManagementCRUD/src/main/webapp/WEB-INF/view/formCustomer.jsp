<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css ">

</head>
<body>

	<form:form action="insertCustomer" modelAttribute="customer" method="POST">
	
		<form:hidden path="id"/>
	
		<table>
			<tr>
				<td>Name: </td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Last name: </td>
				<td><form:input path="lastName"/></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><form:input path="email"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Insert">
				</td>
			</tr>
		</table>
	</form:form>

</body>
</html>