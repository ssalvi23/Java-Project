<html style="height: 1390px;">
<head>
    <title>Home</title>
    <link rel="stylesheet" href="home1.css" >
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript">
    var image = document.getElementById("aaa");
    var img_array=["book21.png","book22.png","book23.png"];
    var index=0;
    function slide()
    {

    document["aaa"].src = img_array[index];
    index++;
    if(index>=img_array.length)
    {
    index=0;
    }
    }
    setInterval("slide()",2000);
    </script>  
    </head>
    <body>
<form name="home">
    <img src="logo.png" id="logoimag">
  <div class="navbar">
  <a href="home page.jsp" ><i class="fa fa-fw fa-home"></i> Home</a> 
  <a href="feedback.jsp"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
  <div class="dropdown">
   <button class="dropbtn">Categories 
      <i class="fa fa-caret-down"></i>
    </button></a>
    <div class="dropdown-content">
      <a href="categories.html">All</a>
      <a href="category1.html">Novels</a>
      <a href="magzine.html">Magazines</a>
      <a href="#">Old Books</a>
    </div>
    </div>     
	<a href="sellbooks.jsp"> <i class="fa fa-book"></i> Sell Books</a>
    <a href="frame.html"><i class="fa fa-shopping-cart"></i> Order</a>
    <a href="#"><i class="fa fa-fw fa-user" id="log"></i> </a>
  </div>
<div id="Category">
    <div id="bookimg"><br>
        <img id="aaa" src="book21.png" width="890" height="350" name="image" />

</div>
</div><br><br>
<h1><div class="heading"> Newly Arrived Latest Books.... </div></h1><br>
<hr style="width:99%; text-align:left; margin-left : 10px; margin-right: 30px;" >




<div class="card">
    <img src="book1.jfif" class="img">
    <p><center> A Million To One</center></p>
    <p class="price" style="color: grey; font-size: 15px;"><center> RS.178</center></p>
	<a href="frame.jsp"><button class="addtocart"> Add To Cart</button></a>
    </div>

    <div class="card">
    <img src="book2.jfif" class="img">
    <p><center>Very Nice</center></p>
    <p class="price" style="color: grey; font-size: 15px;"><center>RS.200</center></p>
    	<a href="frame.jsp"><button class="addtocart"> Add To Cart</button></a>
    </div>

    <div class="card">
        <img src="book3.jfif" class="img">
        <p><center>The Illness Lesson</center></p>
        <p class="price" style="color: grey; font-size: 15px;"><center>RS.350</center></p>
        	<a href="frame.jsp"><button class="addtocart"> Add To Cart</button></a>
        </div>

        <div class="card">
            <img src="book4.jpg" class="img">
            <p><center> Arts&Style </center></p>
            <p class="price" style="color: grey; font-size: 15px;"><center>RS.400</center></p>
				<a href="frame.jsp"><button class="addtocart"> Add To Cart</button></a>
            </div>
			
			 <div class="card">
            <img src="book4.jpg" class="img">
            <p><center>Arts&Style </center></p>
            <p class="price" style="color: grey; font-size: 15px;"><center>RS.400</center></p>
            	<a href="frame.jsp"><button class="addtocart"> Add To Cart</button></a>
            </div>

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
		
</div>
</body>
</html>
