<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2 style="text-align: center">Login page</h2>
<form:form action="${pageContext.request.contextPath}/userAuthentication" method="POST">
<p>
User: <input type="text" name="username"/>
</p>

<p>
Password: <input type="password" name="password"/>
</p>

<input type="submit" value="Login"/>

</form:form>

</body>
</html>