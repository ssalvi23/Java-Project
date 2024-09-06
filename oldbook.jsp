<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Old Books</title>
    <link rel="stylesheet" type="text/css" href="oldbooks.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<div class="container">   
  <form name="category" >
    <img src="logo.png" id="logoimag">
  <div class="navbar">
  <a href="home page.jsp" ><i class="fa fa-fw fa-home"></i> Home</a> 
  <a href="order.jsp"><i class="fa fa-fw fa-search"></i> Orders</a> 
  <a href="feedback.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
  <div class="dropdown">
    <button class="dropbtn">Categories 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      
      <a href="novel.jsp">Novels</a>
      <a href="magazine.jsp">Magazines</a>
      <a href="sample.jsp" class="oldbooks">SecondHand Books</a>
    </div>
    </div>     <a href="sellbooks.jsp"> <i class="fa fa-book"></i> Sell Books</a>
		 <a href="order.jsp"><i class="fa fa-shopping-bag"></i> Orders</a>
    <a href="#"><i class="fa fa-fw fa-user" id="log" style=" pointers-events:none; margin-left: 523px;"></i> SAKSHI</a>
  </div>
  <p class="title"> Old Books </p>
  <div class="fullcard">
  <div class="card">
      <img src="book1.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p>The Illness Lesson</p>
      <p class="price">RS.1000</p><br>      
	<a class="addtocart" href="frame.jsp">Add To Cart</a><br> 
	</div>
    </div>
  </div>
 
<div class="fullcard">
  <div class="card">
      <img src="book1.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p>The Illness Lesson</p>
      <p class="price">RS.350</p><br>       
	<a class="addtocart" href="frame.jsp">Add To Cart</a>	
	</div>
    </div>
  </div>

<div class="fullcard">
  <div class="card">
      <img src="book1.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p>The Illness Lesson</p>
      <p class="price">RS.350</p><br> 
	<a class="addtocart" href="frame.jsp">Add To Cart</a>
	</div>
    </div>
  </div>
  
  <div class="fullcard">
  <div class="card">
      <img src="book1.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p>The Illness Lesson</p>
      <p class="price">RS.350</p><br>       
		<a class="addtocart" href="frame.jsp">Add To Cart</a>
	</div>
    </div>
  </div>
  
  <div class="fullcard">
  <div class="card">
      <img src="book1.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p>The Illness Lesson</p>
      <p class="price">RS.350</p><br>      
	<a class="addtocart" href="frame.jsp">Add To Cart</a>
	</div>
    </div>
  </div>
  
   <div class="fullcard">
  <div class="card">
      <img src="book1.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p>The Illness Lesson</p>
      <p class="price">RS.350</p><br>      
	<a class="addtocart" href="frame.jsp">Add To Cart</a>
	</div>
    </div>
  </div>
   <div class="fullcard">
  <div class="card">
      <img src="book1.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p>The Illness Lesson</p>
      <p class="price">RS.350</p><br>      
	<a class="addtocart" href="frame.jsp">Add To Cart</a>
	</div>
    </div>
  </div>

  <div class="aboutus"><br>
                <p class="au1">About Us</p>

            <br>
                <p class="info">Ever wanted to buy a book but could not
                   because it was too expensive? worry not! because Book Shopify is here! Book Shopify 
                     aims to bring all kinds of best books at the
                     minimal prices ever seen anywhere.</p><br>
                <a href="Register.html"><input type="button" class="rg" value="Register"></a>
                

                    <div class="con2"> 
                        <p class="au1"> Contact Us </p><br>
                        <p class="info"> Email ID : bookshopify@gmail.com</p><br>
                        <p class="info"> Phone NO. 9594997848</p><br>
                        <p class="info"> Address : dgojihdg dfhg</p><br>
                        <div class="icons_1">    
                        <img src="insta.png" class="icons">
                            <img src="fb.png" class="icons" id="fb">
                            <img src="twitter.png" class="icons">
                            </div>
                    </div>
</div>
 </div>