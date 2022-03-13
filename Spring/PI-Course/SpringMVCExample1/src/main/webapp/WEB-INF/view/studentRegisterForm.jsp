<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="theStudent">
	
	Name: <form:input path="name"/>
	<form:errors path="name" style="color:red"/>
	
	<br><br><br>
	
	Last name: <form:input path="lastName"/>
	
	<br><br><br>
	
	Age: <form:input path="age"/>
	<form:errors path="age" style="color:red"/>
	
	<br><br><br>
	
	E-mail: <form:input path="email"/>
	<form:errors path="email" style="color:red"/>
	
	<br><br><br>
	
	Postal code: <form:input path="postalCode"/>
	<form:errors path="postalCode" style="color:red"/>
	
	<br><br><br>
	
	Optional Subjects: <br>
	
	<form:select path="optional" multiple="true">
	
		<form:option value="Design" label="Design"/>
		<form:option value="Karate" label="Karate"/>
		<form:option value="Commerce" label="Commerce"/>
		<form:option value="Dance" label="Dance"/>
	
	</form:select>
	
	<br><br><br>
	
	Barcelona<form:radiobutton path="cityStudies" value="Barcelona"/>
	Madrid<form:radiobutton path="cityStudies" value="Madrid"/>
	Valencia<form:radiobutton path="cityStudies" value="Valencia"/>
	Bilbao<form:radiobutton path="cityStudies" value="Bibao"/>
	
	<br><br><br>
	
	English<form:checkbox path="languagesStudent" value="English"/>
	French<form:checkbox path="languagesStudent" value="French"/>
	German<form:checkbox path="languagesStudent" value="German"/>
	Chinese<form:checkbox path="languagesStudent" value="Chinese"/>
	
	<br><br><br>
	
	<input type="submit" value="Send">
	
	</form:form>

</body>
</html>