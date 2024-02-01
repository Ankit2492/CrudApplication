<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style = "background-color:blue">
<form Style = "border:groove;padding:10px;margin:200px;margin-left:550px; background-color:white;width:15vw" action = "login" method = "post">
	    <label for= "Emaile_mobile_No">Email / Mobile No.</label>
	 	<input type = "email" name = "email_YA_password" id = "Emaile_mobile_No" required>
	 	<label for = "password">Password</label>
	 	<input type ="password" name = "password" id = "password" required>
	 	<input type = "submit" value = "Login" style = "margin-top:15px;">
	 	<a href = "register.jsp" style = "border:groove;border-color:white;border-radius:5px;text-decoration:none; margin-left:100px">Register</a>
</form>
</body>
</html>