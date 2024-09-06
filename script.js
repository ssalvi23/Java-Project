function clearErrors()
{

    errors = document.getElementsByClassName('formerror');
    for(let item of errors)
    {
        item.innerHTML = "";
    }


}
function seterror(id, error)
{
    //sets error inside tag of id 
    element = document.getElementById(id);
    element.getElementsByClassName('formerror')[0].innerHTML = error;

}

function validateForm(){
    var returnval = true;
    clearErrors();

    //perform validation and if validation fails, set the value of returnval to false
    var name = document.forms['login']["name"].value;
    var name = document.forms['login']["password"].value;

    if (name.length<5)
    {
        seterror("name", "*Length of name is too short");
        returnval = false;
    }

    if (password.length == 0)
    {
        seterror("password", "*Length of name cannot be zero!");
        returnval = false;
    }
}