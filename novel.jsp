<html>
<head>
    <title>Novels</title>
    <link rel="stylesheet" type="text/css" href="magzine.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<div class="container">   
  <form name="category">
    <img src="logo.png" id="logoimag">
  <div class="navbar">
  <a href="home page.jsp" ><i class="fa fa-fw fa-home"></i> Home</a> 
  <a href="feedback.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
  <div class="dropdown">
    <button class="dropbtn">Categories 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="novel.jsp" class="novel">Novels</a>
      <a href="magzine.jsp">Magazines</a>
      <a href="sample.jsp">Old Books</a>
    </div>
    </div>     
	<a href="sellbooks.jsp"> <i class="fa fa-book"></i> Sell Books</a>
		 <a href="order.jsp"><i class="fa fa-shopping-bag"></i> Orders</a>
  <%
	String user_name = (String)session.getAttribute("user1");
				if (user_name == null)
				{
		%><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
		<%	
				}
				else
				{ //IF THE VALUE IN SESSION IS NOT NULL THEN THE IS USER IS VALID
					
				}

	%>
	<div class="dropdown">
   <button class="dropbtn"> <% out.println(user_name); %>
      <i class="fa fa-caret-down"></i>
    </button></a>
    <div class="dropdown-content">
      <a href="Login2.jsp">Log-out</a>
	   </div>
    </div>  
	  

	</div>
  <p class="title"> Novels </p><hr>
  <div class="fullcard">
  <div class="card">
      <img src="book1.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p class="btitle">Children's Bible</p>
      <p class="price">RS.1000</p><br>      
	<a class="addtocart" href="frame.jsp">Buy Now</a><br> 
    </div>
  </div>
  </div>

 
<div class="fullcard">
  <div class="card">
      <img src="novel1.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p class="btitle">The Dark Mode</p>
      <p class="price">RS.350</p><br>       
	<a class="addtocart" href="frame.jsp">Buy Now</a><br> 
    </div>
  </div>
  </div>


<div class="fullcard">
  <div class="card">
      <img src="novel2.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p class="btitle">Call Me By Your Name</p>
      <p class="price">RS.350</p><br>       
	<a class="addtocart" href="frame.jsp">Buy Now</a><br> 
    </div>
  </div>
    </div>

  
  
  <div class="fullcard">
  <div class="card">
      <img src="novel3.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p class="btitle">Solar Bones</p>
      <p class="price">RS.350</p><br>       
	<a class="addtocart" href="frame.jsp">Buy Now</a><br> 
    </div>
  </div>
   </div>

  
  <div class="fullcard">
  <div class="card">
      <img src="novel5.jpg" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	  <p class="btitle">Lee Child</p>
      <p class="price">RS.350</p><br>       
	<a class="addtocart" href="frame.jsp">Buy Now</a><br> 
    </div>
  </div>
  </div>
 
 
 <br><br>
  <div class="aboutus"><br><br>
                <p class="au1">About Us</p>

            <br>
                <p class="info">Ever wanted to buy a book but could not
                   because it was too expensive? worry not! because Book Shopify is here! Book Shopify 
                     aims to bring all kinds of best books at the
                     minimal prices ever seen anywhere.</p><br>
                <a href="Register.html"><input type="button" class="rg" value="Register"></a>
                

                    <div class="con2"> 
                        <p class="au1"> Contact Us </p><br>
                        <p class="info"> Email ID : bookshopify@gmail.com</p>
                        <p class="info"> Phone NO. 9594997848</p>
                        <p class="info"> Address : dgojihdg dfhg</p><br>
                        <div class="icons_1">    
                        <img src="insta.png" class="icons">
                            <img src="fb.png" class="icons" id="fb">
                            <img src="twitter.png" class="icons">
                            </div>
                    </div>
</div>