<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register confirmation</title>
</head>
<body>

The student with name <strong>${theStudent.name}</strong>, last name <strong>${theStudent.lastName}</strong>, age <strong>${theStudent.age}</strong>, email <strong>${theStudent.email}</strong> and postal code <strong>${theStudent.postalCode}</strong> is registered successfully.
<br>
The picked subject is: <strong>${theStudent.optional}</strong>.
<br>
The city where the student will start his studies is: <strong>${theStudent.cityStudies}</strong>.
<br>
The picked languages by the student are: <strong>${theStudent.languagesStudent}</strong>.

</body>
</html>