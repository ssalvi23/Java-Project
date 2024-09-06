<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<%	
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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Orders</title>
	 <link rel="stylesheet" type="text/css" href="navbar.css">
	 <link rel="stylesheet" type="text/css" href="order.css">
	 	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body>  
<div class="container">   
    <form name="order" method="GET"  id="form">
     <img src="logo.png" id="logoimg">
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
    </div>  

    </div><br>
	  <p class="otitle">My Orders </p><br>
<center><table>
<tr>
<td>Book Image</td>
<td>Book Name</td>
<td>Quantity</td>
<td>Price</td>

</tr>
	  


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from orders";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td>
      <img src="<%=resultSet.getString("image")%>" alt="mouse corsair" height="150px" width="150px" class="img"><br><br>
</td>
<td><%=resultSet.getString("bookname") %></td><br><br>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("price") %></td>
</tr>
</center>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>	
</div>
</table>
</body>
</html>	
	