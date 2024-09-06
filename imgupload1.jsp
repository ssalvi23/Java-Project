<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>SellBooks</title>
  <link rel="stylesheet" href="sellbooks.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </script>
</head>
<body>
 <div class="fullbg">
   <img src="logo.png" width="120px" height="90px" style="height: 169px;width: 286px;position: absolute;right: 1130px;top: -47;bottom: 490px;">

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
		 <a href="order.jsp"class="order"><i class="fa fa-shopping-bag"></i> Orders</a>
         <a href="sellbooks.jsp" class="sellbooks"> <i class="fa fa-book"></i> Sell Books</a>
        <a href="#"><i class="fa fa-fw fa-user" id="log" style="margin-left: 523px;"></i>SAKSHI </a>
      </div>
<br>
<form name="sellbooks" method="post">
<div class="container">

    <div class="row">
	<p class="stitle"> SellBook Form</p><br>
      <div class="col-25">
        <label for="fname" id="name">Book Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="bname" name="bname" placeholder="Enter Book Name.." onblur="namevalidation()">
      </div>
    </div>
	

    <div class="row">
      <div class="col-25">
        <label for="upload">Upload Image:</label>
      </div>
      <div class="col-75">
        <input type="file" id="file1" name="file1" placeholder="Select file..">
      </div>
    
    </div>
    <div class="row">
      <input type="submit" value="Submit" onclick="functionAlert();"/>
    </div>      
  </div> 
</form>

	  </div>
<%
String book_name= request.getParameter("bname");
String imgfile= request.getParameter("file1");
out.println(book_name);
out.println(imgfile);
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
	PreparedStatement ps= con.prepareStatement("insert into sample values (?,?)");
	//InputStream in = new FileInputStream("D:\\tomcat\\webapps\\cpp\\book4.jpg");
	ps.setString(1,book_name);
	//ps.setBlob(2, in);
	ps.setString(2,imgfile);
    ps.executeUpdate();
    out.println("Record inserted......");
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

  