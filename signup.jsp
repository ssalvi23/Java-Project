<html>
    <head>
        <title>Registration </title>
       
        <link rel="stylesheet" type="text/css" href="Register.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script>
            function validname()
         { 
         with(document.forms.registration)
         var name1= registration.uname.value;
         var letters = /[^A-Za-z\s]/;
         if(letters.test(name1))
		 {
         alert("invalid name");
         }
         }
         

         function emailvalidation()
        { 
        with(document.forms.registration)
        var ename= registration.email.value;
        var letters = /[A-Za-z0-9]+@[a-z]/;
        if(letters.test(ename))
		{
		alert("valid email-id");
        }
		else
        {
		alert("invalid email-id");
        }
        }

         function phonenovalidation()
{ 
with(document.forms.registration)
var pn= registration.phnnum.value;
var letters = /^\d{10}$/;
if(letters.match(pn))
{
alert("Number should contain 10 digits");
}
}

function pwdvalidation()
         { 
         with(document.forms.registration)
         var pass= registration.pwd.value;
         var letters = /^(?=.*\d)(?=.*[a-zA-Z])[a-zA-Z0-9!@#$%&*]{6,20}$/;
         if(letters.test(pass))
         {
         alert("invalid password");
         }
         }
         

    function validpass()
        {
            var x= document["registration"]["pwd"].value;
            var y = document["registration"]["conpwd"].value;
            if(x!=y)
                {
                alert("Password is not matching");
                }
        }

         </script>
        </head>
        <body>
<div class="full">
<div class="container">
            <form name="registration">
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
        <div class="fullbg">
                   
            <div class="register">
			<div class="formcontrol">
            <p id="title1"> Registration </p>
            <input type="text" name="uname" id="uname" placeholder="Enter Name" onblur="validname()"><br><br>
             <span id="valid" style="color: white;"></span>
	        <span id="invalid" style="color: red;"></span>
			</div>

            <input type="text" name="email" id="email" placeholder="Enter Email ID" onblur="emailvalidation()"><br><br>
            <span id="e1" style="color: white;"></span>
	        <span id="e2" style="color: red;"></span>


            <input type="phone" name="phnnumber" id="phnnum" placeholder="Enter Mobile Number" onblur="phonenovalidation()"><br><br>
            <span id="pn1" style="color: white;"></span>
            <span id="pn2" style="color: red;"></span>

            <input type="password" name="pwd"  id="pass" placeholder="Enter Password" onblur="pwdvalidation()"><br><br>
            <span id="pw1" style="color: white;"></span>
            <span id="pw2" style="color: red;"></span>
            
            <input type="password" name="conpwd" id ="conpass" placeholder="Enter Confirm Password" onblur="validpass()"><br><br><br>
            <span id="con1" style="color: white;"></span>
	        <span id="con2" style="color: red;"></span>

            <input type="submit" name="r1" value="Register" id="regbtn"><br><br>
            <div class="title2"><p> If You Have Already Registered <a href="loginpage.html" id="link"> Login </a> </p></div>
            </div>
            </form>
			</div>
        </div>
        </div>
        </body>
    </html>















    