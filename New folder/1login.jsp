<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String str= request.getParameter("name");
String pass= request.getParameter("password");
%>
<%@page import="java.sql.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="loginpage.css">
    <script type="text/javascript" src="script.js"></script>

</head>
<body>
    
    <div class="container">   
        <div id="error"></div>
<form name="login" method="POST  " action="1login.jsp" id="form" onsubmit="return Validateform()">
    <img src="LOGO (1).png" id="logoimag">
    <div class="navbar">
    <a>Home</a>
    <a>Categories</a>
    <a>Sell Books</a>
    <a>My Order</a>
    <a>About us</a>
        
</div><br><br>
<div class="login"> 
    <p id="title1"> Login Interface </p>
<input type="text" name="name" placeholder="Enter Userid" id="uid" class="formerror" required><b><span class="formerror"></span></b><br><br>
<input type="password" name="password" placeholder="Password" id="pwd" required><br><br>
<input type="submit" name="loginbtn" id="btn" value="LOGIN"><br><br>
<div class="title1"><p> Don't Have Account? <a href="" >Register Now </a> </p></div>
</div>
</div>
<% 

try{
Class.forName("com.mysql.cj.jdbc.Driver");
System.out.println("Driver registered successfully");
}
catch(Exception e2)
{
System.out.println("Error in driver registration...");
}

	try
	{
		
		Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookshopify","root","1234");
		Statement st= con.createStatement();
		ResultSet rs=st.executeQuery("select count(*) from login where username=? and password=?");
		while(rs.next())
		{
			rs.getString(1);
		    rs.getString(2);
		}
		
		String s=rs.getString("name");
		if(s!=null)
		{
		out.println("valid user");  
		}
		else
		{
		out.println("invalid user"); 
		}
		con.close();
	}
catch(SQLException e1)
	{}
		
%>
</form>
</body>
</html>
