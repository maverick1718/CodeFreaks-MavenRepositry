<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>
</head>
<body>
<form:form action="User/SignUp.uk" method="post" modelAttribute="signupMA">
Firstname:
<form:input path="firstname"/><br>
Lastname:
<form:input path="lastname"/><br>
Email ID:
<form:input path="email"/><br>
Username:
<form:input path="username"/><br>
Password:
<form:password path="password"/><br>
<form:button name="SignUp"> 
Create an Account
</form:button>

</form:form>
</body>
</html>