<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="loginpage.css">
    <script type="text/javascript" src="script.js"></script>

</head>
<body>  
<div class="container">   
    <div id="error"></div>
    <form name="login" method="get" action="temp.jsp" id="form" onsubmit="return Validateform()">
    <img src="logo.png" id="logoimag">
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
		<input type="password" name="pwd" placeholder="Password" id="pwd" required><br><br>
		<input type="submit" name="loginbtn" id="btn" value="HOME"><br><br>
		<div class="title1"><p> Don't Have Account ? <a href="" >Register Now </a> </p></div>
	</div>
</div>
<%  
String usr= request.getParameter("uid");
	String pwd= request.getParameter("pwd");
	out.print(usr);
	
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
}
	catch(Exception e1)
{
	out.print(e1);
}

try
{
	Connection  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookshopify","root","1234");

	//create statement
	PreparedStatement st=con.prepareStatement("Select * from register where name=? and pass=?");
	
	st.setString(1,usr);
	st.setString(2,pwd);
	ResultSet rs=st.executeQuery();
int n=0;
	while(rs.next())
	{
		n++;
	}
	if(n>0)
		{
		out.print("login suucessfully");
		}
	
	else
		{
		out.print("invalid username and password");
		}
	
rs.close();
st.close();
con.close();
}
catch(Exception e2)
	{
	out.print(e2);
	}
%> 

</form>
</body>
</html>
