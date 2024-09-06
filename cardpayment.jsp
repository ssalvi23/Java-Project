<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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


input[type=text] {
  width: 300px;
  height: 27px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
  background-color: #1984b7;
  width: 349px;
  margin-right: 2px;
}

input[type=submit]:hover {
  background-color: #609bb7;
}

.container {
    position: relative;
	border-radius: 5px;
	background-color: #ffffff;
	width: 393px;
	left: 467px;
    top:0px;
    padding-left: 20px;
    padding-top: 20px;
	padding-bottom: 20px;

}

#cno{
	position: relative;
	width: 209px;
    left: 102px;
    top: -10;
    bottom: 32px;
    bottom: 0px;
    left: 8px;

}

#ed{
    position: relative;
    left: 25px;
    width: 163px;
	font-size: 17px;
}

#cvv{
    position: relative;
    left: 82px;
    width: 164px;
    border-left-width: 0px;
    height: 27px;
}

#fname{
    position: relative;
     width: 200px;
    height: 27px;
    left: 74px;
    width: 209px;


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


.sub{
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}

.sub:hover {
  background-color: #45a049;
}

.title1{
	text-align: center;
	font-family: Josefine Sans;
	font-size: 25px;
	font-weight: bold;
	color: black;
    text-shadow:2px 2px rgb(192 190 215);
	margin-top: -7px;
}

.cno{
	font-family: josefine Sans;
	font-size: 19px;
	font-weight: bold;
}

.ed{
	font-family: josefine Sans;
	font-size: 19px;
	font-weight: bold;
}

.cvv{
	font-family: josefine Sans;
	font-size: 19px;
	font-weight: bold;
}

.fname{
	font-family: josefine Sans;
	font-size: 19px;
	font-weight: bold;
}


</style>
</head>
<body>


    
  <form action="cardpayment.jsp">
    <div class="main">

    <div class="container">
        <p class="title1">Credit Card</p>
            <label for="subject" class="cno">Card Number</label>
            <input type="text" id="cno" name="cno"  placeholder="Enter Card Number..">
            <br>

            <label for="subject"  class="ed"> Expiry Date</label>

		<input type="date" id="ed" name="ed" placeholder="Enter expiry date..">
	<br><br>
	<label for="subject" class="cvv"> CVV</label>

		<input type="text" id="cvv" name="cvv" placeholder="Enter CVV..">
	<br>
		<label for="subject" class="fname">Name</label>

	<input type="text" id="fname" name="fname" placeholder="Name on card..">
	<center>
      <input type="submit" class="sub" value="SUBMIT" onclick="validateForm()" />
</center>

 		

</div>
</div>
</form>
<%
String number= request.getParameter("cno");
String expdate= request.getParameter("ed");
String cvv= request.getParameter("cvv");
String name= request.getParameter("fname");
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
	PreparedStatement ps= con.prepareStatement("insert into cardpayment values(?,?,?,?)");
	ps.setString(1,number);
	ps.setString(2,expdate);
	ps.setString(3,cvv);
	ps.setString(4,name);
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
	out.println();
	}
%>

</body>
</html>
