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
  border-radius: 4px;
 
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
    position: relative;
	border-radius: 5px;
	background-color: #f2f2f2;
	width: 345px;
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
    
    
    left: 21px;
    width: 163px;
}

#cvv{
    position: relative;
    left: 68px;
    width: 164px;
    border-left-width: 0px;
    height: 27px;
}

#fname{
    position: relative;
     width: 200px;
    height: 27px;

    left: 56px;
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
  border-radius: 4px;
  cursor: pointer;
}

.addtocart{
	background-color:black;
	color:white;
	width:100px;
	height:42px;
}
</style>
</head>
<body>
  <form action="">
    <div class="main">

    <div class="container">
        <center><h3>Login AS:</h3></center>
	<a href="home page.jsp"><input type="submit" class="addtocart" value="USER" style="margin-left: 54px;"></a>
	<a href="frame.jsp"><button class="addtocart"> Add To Cart</button></a>

</center>

</div>
</div>
</form>
</body>
</html>