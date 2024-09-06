<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <link rel="stylesheet" type="text/css" href="cod.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script>
        function validateForm()
		{
		var name = document.forms["cod"]["fname"].value;
		var add = document.forms["cod"]["addr"].value;
		var cno = document["cod"]["contact"].value;
		if (fname == "" || add =="" || cno =="")
		{
		alert("PLEASE ENTER ALL THE DETAILS");
		}
		else
		{
			alert("ORDER PLACED SUCCESSFULLY!!");
			
		}
		}

      </script>
<style>
body {font-family: Arial, Helvetica, sans-serif;
background-color: #BDD6E6;
}


input[type=text], select, textarea {
  width: 300px;
  height: 40px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

.sub{
  background-color: #1984b7;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
  margin-right:36px;
   width: 300px;

}

.sub:hover {
  background-color: #609bb7;
}

.container {
    position: relative;
  border-radius: 5px;
  background-color:#ffffff;
  width: 345px;
   left: 480px;
	top:0px;
    padding-left: 20px;
    padding-top: 20px;
	padding-bottom: 20px;

}

 #confirm {
            display: none;
            background-color: #F3F5F6;
            color: #000000;
            border: 1px solid #aaa;
            position:absolute;
            width: 300px;
            height: 100px;
            left: 23px;
            top:200px;
            box-sizing: border-box;
            text-align: center;
         }
         .yes {
			 background-color: #FFFFFF;
            display: inline-block;
            border-radius: 12px;
            border: 4px solid #aaa;
            padding: 5px;
            text-align: center;
            width: 60px;
            cursor: pointer;
			color:black;

         }
		 .yes:hover {
  background-color:  #F4F0F0 ;
}

         #confirm .message {
            text-align: center;
         }

.codtitle{
	text-align: center;
	font-family: Josefine Sans;
	font-size: 25px;
	font-weight: bold;
	color: black;
    text-shadow:2px 2px rgb(192 190 215);

}

.name , .addr , .cont{
	font-family: josefine sans;
	font-size: 17px;
	font-weight: bold;
}
</style>
</head>

<form name="cod" action="cod.jsp" method="post" >
    <div class="main">

    <div class="container">
        <p class="codtitle">Cash On Delivery</p>
        <label for="fname" class="name">Name</label><br>
    
        <input type="text" id="fname" name="fname" placeholder="Enter your name..">
    <br>
    
            <label for="subject"class="addr">Address</label><br>
    <textarea id="addr" name="addr" placeholder="Enter your address.." style="height:60px"></textarea>
    <br>
    <label for="lname" class="cont">Contact No</label><br>
    <input type="text" id="contact" name="contact" placeholder="Enter your contact no..">
<br>

<center>
  
<div id="confirm">
<br>
       <p>Your order has placed successfully....</p><br>
    
        <a href="home page.html" target="_blank"> OK</a> 
		
</div>
		 
 
      <input type="submit" class="sub" value="SUBMIT" onclick="validateForm()" />

</center>
</div>
</div>
<%
String name= request.getParameter("fname");
String address= request.getParameter("addr");
String contactno= request.getParameter("contact");
//out.println(name);
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
	PreparedStatement ps= con.prepareStatement("insert into codpayment values(?,?,?)");
	ps.setString(1,name);
	ps.setString(2,address);
	ps.setString(3,contactno);
	ps.executeUpdate();
	int n=0;
	if(n!=0)
	{
	//out.println("Record inserted successfully");
	}
	else
	{
//out.println("record not inserted");	
	}
	con.close();
	}
	catch(SQLException e1)
	{
	
	}

%>

</form>
</body>
</html>
	  
	  