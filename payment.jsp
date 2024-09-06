<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="Viewport" content="width=device-width, initial-scale=1.0">
    <title>Delicious | Payment</title>
    <link rel="stylesheet" href="payment.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

    <img src="logo.png" id="logoimag">
  <div class="navbar">
  <a href="#" ><i class="fa fa-fw fa-home"></i> Home</a> 
  <a href="#"><i class="fa fa-fw fa-search"></i> Search</a> 
  <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
  <div class="dropdown">
    <button class="dropbtn">Categories 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">All</a>
      <a href="#">Novels</a>
      <a href="#">Magazines</a>
      <a href="#">Old Books</a>
    </div>
    </div>     <a href="#"> <i class="fa fa-book"></i> Sell Books</a>
    <a href="#"><i class="fa fa-shopping-cart"></i> My Cart</a>
    <a href="#"><i class="fa fa-fw fa-user" id="log"></i> </a>
  </div>
   
     <form action="successfull.html">
         <h2>Payment Details</h2>
         <hr>
         <center><p>Accepted Cards</center></p>
         <img src="vi.png" alt="visa">
         <img src="mc.png" alt="masterd">
         <img src="UPI.png" alt="upi">
         <p>Card Number:</p>
         <input type="number" name="cardnumber" id="cardnumber" placeholder="1111-2222-3333-4444"><br>

             <div class="no1">
                <p>Expire Date</p>
                <input type="date" name="Expire_Date" id="Expire Date">
             </div>
             <div class="no2">
                <p>CVV</p>
                <input type="password" name="cvv" id="cvv" maxlength="3" size="3"><br>
             </div>
         <p>Card Owner Name:</p>
         <input type="text" name="ownername" id="ownername">
         <input type="submit" value="Confirm Payment"/>
		 
<%
String cardnum= request.getParameter("cardnumber");
String expdate= request.getParameter("Expire_Date");
String cvv= request.getParameter("cvv");
String c_owner_name= request.getParameter("ownername");
out.println(cardnum);
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
	PreparedStatement ps= con.prepareStatement("insert into payment values(?,?,?,?)");
	ps.setString(1,cardnum);
	ps.setString(2,expdate);
	ps.setString(3,cvv);
	ps.setString(4,c_owner_name);
	ps.executeUpdate();
	out.println("Row inserted");
	con.close();
	}
	catch(SQLException e1)
	{
	out.println(e1);
	}
%>
		 
</form>
</body>
</html>