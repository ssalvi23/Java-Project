<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String str= request.getParameter("uname");
String em= request.getParameter("email");
String phnnum= request.getParameter("phnnumber");
String pass= request.getParameter("pwd");
String conpass= request.getParameter("conpwd");
%>
<%@page import="java.sql.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Registration</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="Register.css">
</head>
<body id="top">
<div class="wrapper col3">
  <div id="container">
    <div class="homepage">
    <p>
    <form method="post" action="register.jsp">
    	 <div class="fullbg">
                   
            <div class="register">
            <p id="title1"> Registration</p>
            <input type="text" name="uname" id="uname" placeholder="Enter Name" onblur="namevalidation()"><br><br>
            <span id="valid" style="color: white;"></span>
	        <span id="invalid" style="color: red;"></span>

            <input type="text" name="email" id="email" placeholder="Enter Email ID" onblur="emailvalidation()"><br><br>
            <span id="e1" style="color: white;"></span>
	        <span id="e2" style="color: red;"></span>


            <input type="text" name="phnnumber" id="phnnum" placeholder="Enter Mobile Number" onblur="phonenovalidation()"><br><br>
            <span id="pn1" style="color: white;"></span>
            <span id="pn2" style="color: red;"></span>

            <input type="password" name="pwd"  id="pass" placeholder="Enter Password" onblur="pwdvalidation()"><br><br>
            <span id="pw1" style="color: white;"></span>
            <span id="pw2" style="color: red;"></span>
            
            <input type="conpassword" name="conpwd" id ="conpass" placeholder="Enter Confirm Password" onblur="conpwdvalidation()"><br><br><br>
            <span id="con1" style="color: white;"></span>
	        <span id="con2" style="color: red;"></span>

            <input type="submit" name="r1" value="Register" id="regbtn"><br><br>
            <div class="title2"><p> If You Have Already Registered <a href="loginpage.html" id="link"> Login </a> </p></div>
            </div>
            </form>
        </div>
        </div>
		</form>
   <%  try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
out.println("Driver registered successfully");
}
catch(Exception e2)
{
out.println("Error in driver registration...");
}

	try
	{
		String p="jdbc:odbc:Driver={Microsoft Access Driver (*.mdb, *.accdb)};DBQ="+"D:\\bookshopify database\\bookshopify.accdb";
        Connection con=DriverManager.getConnection(p);
		  	 PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?)");
           	 ps.setString(1,str);
           	 ps.setString(2,em);
           	 ps.setString(3,phnnum);
			 ps.setString(4,pass);
			 ps.setString(5,conpass);
           	 ps.executeUpdate();
           	 if (str!=null)
           	out.println("Registered successfully...<br>"); 
                   	
           	 //ResultSet rs=st1.executeQuery("select * from login where userid=? and password=?");
      	   con.close();
	}
	catch(SQLException e1)
	{
	out.println(e1.getMessage());
	}       	    
	
   	%>
   
</body>
</html>