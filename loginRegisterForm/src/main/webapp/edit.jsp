<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="loginRegisterForm.connectionDatabase"%>
<%@page import="java.sql.PreparedStatement"%>
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
	width:200px;
	padding:50px;
	padding-top:120px;
	background-color:white;
}

.setbutton{
	margin-top:15px;
	padding-left:50px;
}
body{
	background-color:lime;
}
p{
border-style:2px solid;
font-size:20px;
font-width:5px;
margin:auto;
width:200px;
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

.ph{

margin-bottom:-170px;
padding:100px;
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
<%
String userId = request.getParameter("id"); 

String url = "jdbc:mysql://localhost:3306/storeUserData";
String username = "root";
String password = "";
String selectQuery = "select * from storeData where mobileno = ?";


try {
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,username,password);
    PreparedStatement ps = con.prepareStatement(selectQuery);
    ps.setString(1,userId);
    ResultSet rs = ps.executeQuery();
    while(rs.next()){
 
    	%>
    	<div class = "ph">
    <p>Update User Data...</p>
    </div>
    	<form action = "updateData" method = "post">
    
	<label for = "name">Full Name</label><br>
		<input type = "text" name = "name" id = "name" required value ="<%=rs.getString("name") %>"><br>
	<label for = "Qualification">Education</label><br>
		<input type = "text" name ="Education" id = "Qualification" required value ="<%=rs.getString("Education") %>"><br>
		
		<input type="hidden" name = "mobileNo" value="<%=rs.getString("mobileno")%>">
		<%
		String type = rs.getString("gender"); 	
    if(type.equals("male")){

    String type1 = "male";
    
    %>
    <label for = "gender">male</label>
		<input type = "radio" name = "gender" required id = "gender" value = "male" checked>
		
		<label for = "gender1">female</label>
		<input type = "radio" name = "gender" required id = "gender1" value ="female">
    
		<label for = "gender2">other</label>
		<input type = "radio" name = "gender" required id = "gender2" value ="other"><br>
		
		<%
    }else if(type.equals("female")){

    String type2 = "female";
    %>
    
     <label for = "gender">male</label>
		<input type = "radio" name = "gender" required id = "gender" value ="male">
		
		<label for = "gender1">female</label>
		<input type = "radio" name = "gender" required id = "gender1" value ="female" checked>
    
		<label for = "gender2">other</label>
		<input type = "radio" name = "gender" required id = "gender2" value ="other"><br>
	
    <%
    }else{

    String type3 = "other";
    %>
    <label for = "gender">male</label>
	<input type = "radio" name = "gender" required id = "gender" value ="male">
	
	<label for = "gender1">female</label>
	<input type = "radio" name = "gender" required id = "gender1" value ="female">

	<label for = "gender2">other</label>
	<input type = "radio" name = "gender" required id = "gender2" value ="other" checked><br>
	<%
    }
			%>
  
	<label for ="Dob">D.O.B.</label><br>
		<input type = "date" name = "dob" id = "Dob" required value = "<%=rs.getString("DOB")%>"><br>
	<label for = "password">password</label><br>
		<input type = "password" name = "password" id = "password" required value = "<%=rs.getString("password")%>"><br><br>
		<div class= "setbutton">
		<input type = "submit" value = "update" style= "background-color:lime;
	color:black;border-color:lime">
		</div>
		
    	<%
    
    }

}catch(Exception e){
	e.printStackTrace();
}

%>


</form>
</body>
</html>