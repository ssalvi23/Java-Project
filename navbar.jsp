<html>
    <head>
        <title>Login</title>
        
        <link rel="stylesheet" type="text/css" href="navbar.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
    </head>
    <body>
    <div class="container">   
      <form name="login" action="loginpage.html" style= "height: 169px;">
        <img src="logo.png" id="logoimag">
      <div class="navbar">
      <a href="home page.jsp" ><i class="fa fa-fw fa-home"></i> Home</a> 
      <a href="feedback.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
     
      <div class="dropdown">
        <button class="dropbtn">Categories 
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
    
          <a href="novel.jsp">Novels</a>
          <a href="magzine.jsp">Magazines</a>
          <a href="sample.jsp">Old Books</a>
        </div>
        </div>            

            <a href="sellbooks.jsp"> <i class="fa fa-book"></i> Sell Books</a>
				        <a href="#"><i class="fa fa-shopping-bag"></i> Orders</a>

 <%
	String user_name = (String)session.getAttribute("user1");
				if (user_name == null)
				{
		%>
		<%	
				}
				else
				{ //IF THE VALUE IN SESSION IS NOT NULL THEN THE IS USER IS VALID
					
				}

	%>
	<a href="#"><i class="fa fa-fw fa-user" id="log"></i> <% out.println(user_name); %></a>      </div><br><br>
    <center>    <font><b>Type Of Payment:</b></font></center><br><br>
    <div class="cod">    
        <a href="cod.jsp" target="f2"> Cash On Delivery</a> 
</div>
<div class="cod" style="left: 680px;top: -40;">    
    <a href="cardpayment.jsp"  target="f2" style="padding-left: 24px;padding-right: 32px;"> Card Payment</a>
</div>

</div>
</form>
    </body>
    </html>