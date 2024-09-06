<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login</title>
   <!-- <link rel="stylesheet" type="text/css" href="loginpage.css">-->
	 <link rel="stylesheet" type="text/css" href="navbar.css">
	 	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
    <script>
	 function user() {
        var user = document.getElementById("chkYes");
        var seller = document.getElementById("dvPassport");
        dvPassport.style.display = chkYes.checked ? "block" : "none";
    }
	
	
	</script>
	
	
	<style>
	.container 
	{
	background-color: #BDD6E6;
    backdrop-filter: blur(8px); 
    height:610px;
    width: 1366px;
	}
	
	.login
	{
		position:relative;
    padding: 30px;
    box-sizing: border-box;
    background-color:rgb(2, 2, 2 , 0.6);
    box-shadow: 0 10px 15px -10px rgb(88, 83, 83);
    border-radius: 5px;
    padding: 106px;
    margin: 20px;
    width:560px;
    font-size: 20px;
    margin-left: 29%; 
	height: 469px;
	bottom: 163px;
	}
	
	#uid ,#pwd, #btn ,#title
	{
	font-size: 25px;
	}
	
	#title1
	{
	margin: 30px;
	font-size: 45px;
	color: rgb(255, 255, 255);;
	text-shadow:2px 2px rgb(255, 217, 0);
	margin-top: -37px;
	}
	
	#uid{
    background-image: url(login.png);
	background-size: 60px;
    background-position: 100%;
	background-repeat: no-repeat;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	}

	#pwd{
    background-image: url(password.png);
	background-size: 40px;
    background-position: 97%;
	background-repeat: no-repeat;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	}
	
	#btn{
    border-radius: 15px;
    padding: 6.8px;
    margin-left: 120px;
    font-size: 28px;
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    background-color: #fcfcfc;
	}

	#uid,#pwd{
    padding: 10px;
	}
	
	.title1{
      color: aliceblue;
      margin-left: 25px;
	}

	a{
      color: rgb(233, 204, 39);
	}


	#ck{
	color:white;
	font-size:20px;
	}
	
	#logoimg
	{
		position:relative;
		
		width: 246px;
		height: 151px;
		right: 61px;
		bottom: 39px;
	}
	
	
	.navbar {
		position:relative;
  overflow: hidden;
  background-color: #333;
  margin-left: 136px;
width: 1230px;
bottom: 151px;

}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;

}



.dropdown {
  float: left;
  overflow: hidden;


}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}


	.navbar a:hover, .dropdown:hover, .dropbtn:hover {
	background-color: #848180;
	}

	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f9f9f9;
	  min-width: 160px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}

	.dropdown-content a 
	{
	  float: none;
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	  text-align: left;
	}

	.dropdown-content a:hover 
	{
  background-color: #ddd;
	}

	.dropdown:hover .dropdown-content 
	{
	display: block;
	}

	</style>
</head>
<body>  
<div class="container">   
    <form name="login" method="GET" action="home.jsp" id="form" onsubmit="return Validateform()">
     <img src="logo.png" id="logoimg">
      <div class="navbar">
      <a href="#" ><i class="fa fa-fw fa-home"></i> Home</a> 
      <a href="feedback.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
     
      <div class="dropdown">
        <button class="dropbtn">Categories
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
          <a href="categories.jsp">All</a>
          <a href="#">Novels</a>
          <a href="#">Magazines</a>
          <a href="#">Old Books</a>
        </div>
        </div>            
		 <a href="#"><i class="fa fa-shopping-bag"></i> Orders</a>
         <a href="sellbooks.jsp"> <i class="fa fa-book"></i> Sell Books</a>
        <a href="frame.jsp" class="cart"><i class="fa fa-shopping-cart"></i> My Cart</a>
        <a href="#"><i class="fa fa-fw fa-user" id="log"></i> </a>
      </div><br><br>
	
	
	<div class="login"> 
		<p id="title1"> Login Interface </p>
		<input type="text" name="uid" placeholder="Enter Userid" id="uid" class="formerror" required><b><span class="formerror"></span></b><br><br>
		<input type="password" name="password" placeholder="Password" id="pwd" required><br><br>
		<input type="radio" name="selectop">User
		<input type="radio" name="selectop">Seller<br>
		<input type="submit" name="loginbtn" id="btn" value="LOGIN"><br><br>
		<div class="title1"><p> Don't Have Account ? <a href="" >Register Now </a> </p></div>
	</div>
</div>

</form>
</body>
</html>