<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
	
	<script>

</script>
        <title>Registration </title>
       
        <link rel="stylesheet" type="text/css" href="Register.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script>
            function validname()
         { 
         with(document.forms.registration)
         var name1= registration.uname.value;
         var letters = /[^A-Za-z\s]/;
         if(letters.test(name1))
		 {
         alert("invalid name");
         }
         }
         

function myFunction() {
  var x = document.getElementById("pass");
    var y = document.getElementById("conpass");

  if (x.type === "password" && y.type === "password") {
    x.type = "text";
	    y.type = "text";

  } else {
    x.type = "password";
	    y.type = "password";

  }
}

         
         function phonenovalidation()
{ 
with(document.forms.registration)
var pn= registration.phnnum.value;
var letters = /^\d{10}$/;
if(letters.match(pn))
{
alert("Number should contain 10 digits");
}
}

function pwdvalidation()
         { 
         with(document.forms.registration)
         var pass= registration.pwd.value;
         var letters = /^[a-zA-Z0-9]$/;
         if(letters.test(pass))
         {
         alert("invalid password");
         }
		 }
         
         

    function validpass()
        {
            var x= document["registration"]["pwd"].value;
            var y = document["registration"]["conpwd"].value;
            if(x!=y)
                {
                alert("Password is not matching");
                }
        }

         </script>
        </head>
        <body>
<div class="full">

<div class="container">

            <form name="registration" action="" method="post">
    <img src="logo.png" id="logoimag">        
 <div class="navbar">
  <a href="home page.jsp" ><i class="fa fa-fw fa-home"></i> Home</a> 
  <a href="feedback.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
  <div class="dropdown">
   <button class="dropbtn">Categories 
      <i class="fa fa-caret-down"></i>
    </button></a>
    <div class="dropdown-content">
    
      <a href="novel.jsp">Novels</a>
      <a href="magzine.jsp">Magazines</a>
      <a href="sample.jsp">Old Books</a>
    </div>
    </div>     
	<a href="sellbooks.jsp"> <i class="fa fa-book"></i> Sell Books</a>
    
  </div>
        <div class="fullbg">
                   
            <div class="register" style="margin-top: 61px;">
			<div class="formcontrol">
            <p id="title1"> Registration </p>
            <input type="text" name="uname" id="uname" placeholder="Enter Name" onblur="validname()"><br><br>
             
			</div>

            <input type="text" name="email" id="email" placeholder="Enter Email ID" onblur="emailvalidation()"><br><br>
           


            <input type="phone" name="phnnum" id="phnnum" placeholder="Enter Mobile Number" onblur="phonenovalidation()"><br><br>
            

            <input type="password" name="pass"  id="pass" placeholder="Enter Password" onblur="pwdvalidation()"><br><br>
            
            
            <input type="password" name="conpass" id ="conpass" placeholder="Enter Confirm Password" onblur="validpass()"><br><br><br>
            


<h3><input type="checkbox" onclick="myFunction()" style=" margin-left: 50px;"> Show Password</h3>

<br><br>
            <input type="submit" name="r1" value="REGISTER" id="regbtn"><br><br>
            <div class="title2"><p> If You Have Already Registered <a href="Login2.jsp" id="link"> Login </a> </p></div>
            </div>
			
<%
	String u= request.getParameter("uname");
	String e= request.getParameter("email");
	String p= request.getParameter("phnnum");
	String pas= request.getParameter("pass");
	String conpas= request.getParameter("conpass");
	out.println(u);
	
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
	PreparedStatement ps= con.prepareStatement("insert into register values (?,?,?,?,?)");
	ps.setString(1,u);
	ps.setString(2,e);
	ps.setString(3,p);
	ps.setString(4,pas);
	ps.setString(5,conpas);
	ps.executeUpdate();
	out.println("You Have Registered Successfully!!");
	con.close();
	}
	catch(SQLException e1)
	{
	}
%>	
			
		   </form>
			</div>
        </div>
        </div>
        </body>
    </html>















    














    