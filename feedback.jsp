<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Contact</title>
  <link rel="stylesheet" href="feedback.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
</head>
<body>
  <img src="logo.png" width="120px" height="90px" style="height: 169px;width: 286px;position: absolute;right: 1130px;top: -47;bottom: 480px;">
    
<div class="navbar">
    <a href="home page.jsp" ><i class="fa fa-fw fa-home"></i> Home</a> 
      <a href="feedback.jsp" class="feedback"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
     
      <div class="dropdown">
        <button class="dropbtn">Categories
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
          <a href="novel.jsp">Novels</a>
          <a href="magzine.jsp">Magazines</a>
          <a href="oldbook.jsp">Old Books</a>
        </div>
        </div>            

         <a href="sellbooks.jsp"> <i class="fa fa-book"></i> Sell Books</a>
		 				 <a href="order.jsp"class="order"><i class="fa fa-shopping-bag"></i> Orders</a>

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
    </div>    </div>	
 <div class="wrapper">
    <br> <br> <br>  <br> <br> <br>
    <form class="form" method="get">
      <center><div class="pageTitle title"><b>Contact Us</b></div></center>
      <input type="text" name="uname" style="margin-left: 80px;" class="name formEntry" placeholder="Name" />
      <input type="text" name="email" style="margin-left: 80px;" class="email formEntry" placeholder="Email"/>
      <textarea name="message" class="message formEntry" placeholder="Message"></textarea>
      <button id="myBtn" class="submit formEntry" onclick="functionAlert();" />Submit</button>
  </div>
   
<%
String name= request.getParameter("uname");
String em= request.getParameter("email");
String msg= request.getParameter("message");

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
	PreparedStatement st= con.prepareStatement("insert into feedback values(?,?,?)");
	st.setString(1,name);
	st.setString(2,em);
	st.setString(3,msg);
	st.executeUpdate();
	int n=0;
	while(n!=0)
	{
	out.println("Row inserted");
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

