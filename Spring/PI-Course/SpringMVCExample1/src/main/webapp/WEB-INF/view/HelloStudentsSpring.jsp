<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/myStyle.css">
</head>
<body>

Hello ${param.studentName }. Welcome to Spring Course

<h2>Attention everyone</h2>
<p>
${clearMessage }
</p>

<img alt="photo" src="${pageContext.request.contextPath}/resources/imgs/image.jpg">

</body>
</html>