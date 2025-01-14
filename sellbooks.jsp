<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %> 
<%@page import="java.lang.*" %> 
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

	</div
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
        <label for="pdate">Purchase Date:</label>
      </div>
      <div class="col-75">
        <input type="date" id="pdate" name="pdate" placeholder="Select date..">
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
        <input type="text" id="auname" name="auname" placeholder="Enter Author Name..">
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
        <input type="file" id="file1" name="file1" placeholder="Select file..">
      </div>
    
    </div>
    <div class="row">
      <input type="submit" value="Submit" onclick="functionAlert();"/>
    </div>      
  </div> 
</form>
 <div id="confirm">
      <div class="title ">
      <h1>THANK YOU!!!</h1>
      </div>
         <div class="mssg">Your message has been sent successfully...</div>
         <button class="yes">OK</button>
      </div>
	  </div>
<%
String book_name= request.getParameter("bname");
String p_date= request.getParameter("pdate");
String category= request.getParameter("category");
String author_name= request.getParameter("auname");
String book_lang= request.getParameter("lang");
String b_price= request.getParameter("price");
String descrip= request.getParameter("description"); 
String img= request.getParameter("file1");

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
	PreparedStatement ps= con.prepareStatement("insert into sellbooks values (?,?,?,?,?,?,?,?)");
	ps.setString(1,book_name);
	ps.setString(2,p_date);
	ps.setString(3,category);
	ps.setString(4,author_name);
	ps.setString(5,book_lang);
	ps.setString(6,b_price);
	ps.setString(7,descrip);
	ps.setString(8,img);
	ps.executeUpdate();
	int n=0;
	while(n!=0)
	{
	out.println("successfull!!");
	}
	
	con.close();
	}
	catch(SQLException e1)
	{
	out.println(" ");
	}
	

%>	  
	  
</form>
</body>
</html>

  