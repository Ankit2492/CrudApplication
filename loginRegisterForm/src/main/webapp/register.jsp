<%@page import="java.sql.Connection"%>
<%@page import="loginRegisterForm.loginRegisterDatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style = "background-color:red">

	<form action = "register" method = "post" style = "background-color:white;width:400px;text-align:center">
	<div style = "padding:20px">
    			<label for ="full_name">Full Name</label><br>
					<input type = "text" name= "full_name" id = "full_name" width= "50px" required><br>
				<label for = "email">Email</label><br>
					<input type = "email" name = "email" id = "email" required><br>
   			
				<!-- <label for = "mobile_number">Mobile Number</label>
					<input type = "tel" name = "mobile_No" id = "mobile_number" required>
			
				<label for = "work">Choose Department</label>
					<input type = "text" name = "work" id = "work" required> -->
			
				<label for = "language">Choose Language</label><br>
					<select id = "language" name = "language" id = "language" required>
						<option >--Select language--</option>
						<option value = "java">java</option>
						<option value = "c">c</option>
						<option value = "c++">c++</option>
						<option value = "c#">c#</option>
					</select><br>
				<label for = "male">Male</label>
					<input type = "radio" name = "gender" value = "male" id = "male">
				<label for = "female">Female</label>
					<input type = "radio" name = "gender" value = "female" id = "female">
				<label for = "other">other</label>
					<input type = "radio" name = "gender" value = "other" id = "other"><br>
				<label for = "dob">Date of Birth</label><br>
					<input type = "date" name = "dob" id = "dob" required><br>
			    <label for = "createPassword">Create Password</label><br>
			    	<input type = "password" name = "getpassword" required id = "createPassword"><br>
					<input type = "submit" value = "register">
					<input type = "reset" value = "reset"><br>
					
				
			<a href = "login.jsp" style = "border:groove;border-color:white;border-radius:5px;text-decoration:none;">Login</a>
	</div>
	</form>
</body>
</html>