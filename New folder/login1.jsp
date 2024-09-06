<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String str= request.getParameter("userid");
String pwd= request.getParameter("password");
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
<form name="login" method="POST  " action="login.jsp" id="form" onsubmit="return Validateform()">
    <img src="LOGO (1).png" id="logoimag">
    <div class="navbar">
    <a>Home</a>
    <a>Categories</a>
    <a>Sell Books</a>
    <a>My Order</a>
    <a>About us</a>
    <div class="searchbox">
    </div> 
        
</div><br><br>
<div class="login"> 
    <p id="title1"> Login Interface </p>
<input type="text" name="name" placeholder="Enter Userid" id="uid" class="formerror" required><b><span class="formerror">name is short</span></b><br><br>
<input type="password" name="password" placeholder="Password" id="pwd" required><br><br>
<input type="submit" name="loginbtn" id="btn" value="LOGIN"><br><br>
<div class="title1"><p> Don't Have Account? <a href="" >Register Now </a> </p></div>
</div>
</div>
<%  try
{ 
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); 
}
catch(Exception e)
{
out.println("Connection failed");
}
try
{
    Connection con = DriverManager.getConnection("jdbc:odbc:shopifydsn"); 
           PreparedStatement ps=con.prepareStatement("insert into login values(?,?)");
           
            
           // ps.executeUpdate();
            //if (str!=null)
           //out.println("Registered successfully...<br>"); 
                   
            //ResultSet rs=st1.executeQuery("select * from login where userid=? and password=?");
			 ps.setString(1,str);
            ps.setString(2,pwd);
			out.println("valid user");
			else
			out.println("invalide user");
                         %>
<td width="80">
</td>
<% out.println("</h1>"); 
con.close();
}
catch(SQLException e1)
{
out.println(e1.getMessage());
}

%> 

</form>
</body>
</html>
