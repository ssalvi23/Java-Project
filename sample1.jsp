<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <link rel="stylesheet" href="sellbooks.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  </script>
</head>
<body>
 <div class="fullbg">
<div>  
<form name="sellbook" method="get"> 
<img src="logo.png" id="logoimag">
  <div class="navbar">
  <a href="#" ><i class="fa fa-fw fa-home"></i> Home</a> 
  <a href="#"><i class="fa fa-fw fa-search"></i> Search</a> 
  <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
    <a href="#"> <i class="fa-solid-fa-bars"></i>Categories</a>

  <a href="#"> <i class="fa fa-book"></i> Sell Books</a>
    <a href="#"><i class="fa fa-shopping-cart"></i> My Cart</a>
  <a href="#"><i class="fa fa-fw fa-user" id="log"></i> </a>
</div>
<br>

<div class="container">

    <div class="row">
      <div class="col-25">
        <label for="fname" id="name">Book Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="bname" name="bookname" placeholder="Enter Book Name.." onblur="namevalidation()">
      </div>
    </div>
	
    <div class="row">
      <div class="col-25">
        <label for="pdate">Purchase Date:</label>
      </div>
      <div class="col-75">
        <input type="date" id="pdate" name="p_date" placeholder="Select date..">
      </div>
    </div>
	
    <div class="row">
      <div class="col-25">
        <label for="category">Category</label>
      </div>
      <div class="col-75">
        <select id="category" name="category">
          <option value="australia">Old Books</option>
          <option value="canada">Magazines</option>
          <option value="usa">Newspaper</option>
        </select>
      </div>
    </div>

    
    <div class="row">
      <div class="col-25">
        <label for="authorname">Author Name:</label>
      </div>
      <div class="col-75">
        <input type="text" id="auname" name="authorname" placeholder="Enter Author Name..">
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="lang">Book Language</label>
      </div>
      <div class="col-75">
        <select id="lang" name="lang">
          <option value="English">English</option>
          <option value="Marathi">Marathi</option>
          <option value="Hindi">Hindi</option>
        </select>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="lname">Price:</label>
      </div>
      <div class="col-75">
        <input type="text" id="price" name="price" placeholder="Enter price..">
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="subject">Description</label>
      </div>
      <div class="col-75">
        <textarea id="description" name="description" placeholder="Write something.." style="height:100px"></textarea>
      </div>
    </div>

    <div class="row">
      <div class="col-25">
        <label for="upload">Upload Image:</label>
      </div>
      <div class="col-75">
        <input type="file" id="file" name="uploadfile" placeholder="Select file..">
      </div>
    </form>
    </div>
    <div class="row">
      <input type="submit" value="Submit" onclick="functionAlert();"/>
    </div>      
  </div> 

 <div id="confirm">
      <div class="title ">
      <h1>THANK YOU!!!</h1>
      </div>
         <div class="mssg">Your message has been sent successfully...</div>
         <button class="yes">OK</button>
      </div>
	  </div>

			
<%
String book_name= request.getParameter("bookname");
String p_date= request.getParameter("p_date");
String category= request.getParameter("category");
String author_name= request.getParameter("authorname");
String book_lang= request.getParameter("lang");
String b_price= request.getParameter("price");
String descrip= request.getParameter("description"); 
out.println(book_name);
	
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
	//create statement
	PreparedStatement ps= con.prepareStatement("insert into sellbooks(bookname,purchasedate,category,authorname, blanguage, price, decscription) values (?,?,?,?,?,?,?)");
	ps.setString(1,book_name);
	ps.setString(2,p_date);
	ps.setString(3,category);
	ps.setString(4,author_name);
	ps.setString(5,book_lang);
	ps.setString(6,b_price);
	ps.setString(7,descrip);
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
			</div>
        </div>
        </div>
        </body>
    </html>















    














    