   
   <!--function namevalidation()
{ 
with(document.forms.login)
var uname= login.name.value;
var letters = /^[A-Za-z]+$/;
if(letters.test(uname))
{
document.getElementById("valid").innerHTML="**valid name**";
}
else
{
document.getElementById("invalid").innerHTML="**In-valid name**";
}
/*}

function pwdvalidation()
{ 
with(document.forms.login)
var pass= login.password.value;
var letters = /^(?=.*\d)(?=.*[a-zA-Z])[a-zA-Z0-9!@#$%&*]{6,20}$/;
if(letters.test(pass))
{
document.getElementById("pwd1").innerHTML="**valid password**";
}
else
{
document.getElementById("pwd2").innerHTML="**In-valid password**";
}
}

function login1()
{
var a = document.forms["login"]["name"].value;
var b = document.forms["login"]["pwd"].value;

if(a=="" && b=="")
{
alert("Please enter the details!!");
}
else
{
alert("logged in successfully!!")
}
}-->*/


<script charset="utf-8">
const username = document.getElementById('uid');
/*const update=document.querySelector('.update');
email.addEventListner('input',inputEmail);*/
function inputEmail(e) {
const input=e.target.value;
if(input &&

update.textContent='Valid Username!';
update.classList.add('success');
update.classList.remove('failure');
}
else
{
update.textContent='Keep Going...';
update.classList.add('success');
update.classList.remove('failure');
}
};



</script>