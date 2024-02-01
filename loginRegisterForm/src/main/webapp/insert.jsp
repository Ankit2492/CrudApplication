<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
form{
	border:groove;
	margin:auto;
	margin-top:-50px;
	width:200px;
	padding:50px;
	padding-top:80px;
	background-color:white;
}
.setbutton{
	margin-top:15px;
}
body{
	background-color:lime;
}
p{
border-style:2px solid;
font-size:20px;
font-width:5px;
margin:auto;
margin-top:200px;
width:150px;
}


nav{

background-color:blue;
border-radius:10px;
}
a{
text-decoration:none;
font-size:25px;
font-width:20px;

}
.border{
border-style:groove;
border-radius:10px;
}
.spaceinsert{
margin-left:200px;
color:white;

}
.spacedelete{
margin-left:50px;
color:white;
}
.spacedite{
margin-left:50px;
color:white;
}
.spacjsp{
margin-left:50px;
color:white;
}
</style>

</head>
<body>
<header>
	<nav>
		<a href= home.jsp class = "border spaceinsert">HOME</a>
			
		<a href = "index.jsp" class = "border spacjsp">Logout</a>
		
	</nav>
</header>

<p>Insert User Data...</p>
<form action = "insertData" method = "post">
  
	<label for = "name">Full Name</label><br>
		<input type = "text" name = "name" id = "name" required><br>
	<label for = "Qualification">Education</label><br>
		<input type = "text" name ="Education" id = "Qualification" required><br>
	<label for ="mobile">Mobile No.</label><br>
		<input type = "tel" name = "mobileNo" required  id = "mobile"><br>
		<label for = "gender">male</label>
		<input type = "radio" name = "gender" value = "male" required id = "gender">
		<label for = "gender1">female</label>
		<input type = "radio" name = "gender" value = "female" required id = "gender1">
		<label for = "gender2">other</label>
		<input type = "radio" name = "gender" value = "other" required id = "gender2"><br>
	<label for ="Dob">D.O.B.</label><br>
		<input type = "date" name = "dob" id = "Dob" required><br>
	<label for = "password">password</label><br>
		<input type = "password" name = "password" id = "password" required>
		<div class= "setbutton">
		<input type = "submit" value = "insert">
		<input type = "reset" value = "reset">
		</div>

</form>
</body>
</html>