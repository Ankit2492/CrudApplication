<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
tr{
border:groove;
}
td{
border:groove;
padding:7px;
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
table{
  margin:auto;
  margin-top:100px;
  width:1000px;
  text-align:center;
  background-color:white;
  border:groove;
}
th{
   background-color:lime;
   border:groove;
   }
.as{
border:solid;
 }
 body{
  background-color:yellow;
 }
 .button1{
background-color:lime;
 border-radius:10px;
 border-style:solid;
 color:white;
margin:10px;
font-size:22px;
 }
 .button2{
 background-color:red;
 border-style:solid;
 border-radius:10px;
 color:white;
margin:10px;
font-size:22px;
 }
</style>
</head>
<body>


<header>
	<nav>
		
			<a href= insert.jsp class = "border spaceinsert">Insert-Details</a>
		
		<a href = "index.jsp" class="border spacjsp">Logout</a>
		
	</nav>
</header>

<%=request.getAttribute("outkey") %>
   
 <%
        String url = "jdbc:mysql://localhost:3306/storeUserData";
		String username = "root";
		String password = "";
		String selectQuery = "select * from storeData";
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement ps = con.prepareStatement(selectQuery);
   		    ResultSet rs = ps.executeQuery();
   		 
   		    %>
   		    <table style="border-collapse:collapse">
   		    <caption style="background-color:Fuchsia;font-size:20px;border:groove;">User Table </caption>
   						<tr>
   							
   							<th>Name</th>
   							<th>Education</th>
   							<th>Mobile No.</th>
   							<th>gender</th>
   							<th>DOB</th>
   							<th>Action</th>

   						</tr>
   							<%
   				while(rs.next()){
   					%>
   					
   						<tr>
   							
   							<td><%=rs.getString("name") %></td>
   								<td><%=rs.getString("Education") %></td>
   								<td><%=rs.getString("mobileno") %></td>
   								<td><%=rs.getString("gender") %></td>
   								<td><%=rs.getString("DOB") %></td>
   								<td>
   								
   									  <a href = "edit.jsp?id=<%=rs.getString("mobileno") %>" class = "button1 edite" >Edit</a>
   								
   						
   									<a href = "delete?id=<%=rs.getString("mobileno") %>" class = "button2 delete" >Delete</a>
   								
   								</td>
   						</tr>
   						<% 
   						}
   						%>
   							</table>
   							<%
		}catch(Exception e) {
			e.printStackTrace();
		}
		
%>
</body>
</html>