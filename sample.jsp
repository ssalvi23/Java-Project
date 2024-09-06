<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml" style="height: 1252px;">
<head>
    <title>Old Books</title>
  <link rel="stylesheet" type="text/css" href="sample.css">
          <meta name="viewport" content="width=device-width, initial-scale=1">
		<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  </script>
</head>
<body>
<div class="fullbg">  
  <img src="logo.png" width="120px" height="90px" style="height: 169px;width: 286px;position: absolute;right: 1130px;top: -47;bottom: 480px;">
<div class="navbar">
      <a href="#" ><i class="fa fa-fw fa-home"></i> Home</a> 
      <a href="feedback.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
     
      <div class="dropdown">
        <button class="dropbtn">Categories
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
          <a href="novel.jsp">Novels</a>
          <a href="magzine.jsp">Magazines</a>
          <a href="sample.jsp" class="oldbooks">Old Books</a>
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
<br><br><br><br><br>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "bookshopify";
String userid = "root";
String password = "1234";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<p class="title1"> OLD BOOKS</p><br><hr>
<table >

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select image,bookname,price from sellbooks";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{	
%>
<th><td>
  
   <div class="fullcard" >
  <div class="card">
      <img src="<%=resultSet.getString("image")%>" alt="mouse corsair" class="img"><br><br>
      <div class="book-details">
	 <p class="btitle"><%=resultSet.getString("bookname")%></p>  
	  <p class="btitle"><%=resultSet.getString("price")%></p><br>  
	<a class="addtocart" href="frame.jsp">Buy Now</a><br> 
	</div>
    </div>
  </div>
 
</td></th>
<%
}
connection.close();
} catch (Exception e) 
{
e.printStackTrace();
}
%>
</div>	
</table>
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
</body>
</html>