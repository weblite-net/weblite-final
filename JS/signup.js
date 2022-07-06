document.getElementById("email").addEventListener("blur",function(){

    var validRegex = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

    if (! document.getElementById("email").value.match(validRegex))
        document.getElementById('2').innerHTML="Invalid email";
    else
        document.getElementById('2').innerHTML="";
});

document.getElementById("pass").addEventListener("blur",function(){

    if ((document.getElementById("pass").value).length<8)
        document.getElementById('3').innerHTML="Password should be atleast 8 characters long";
    else
        document.getElementById('3').innerHTML="";

});

document.getElementById("confirmpass").addEventListener("blur",function(){

    if (document.getElementById("confirmpass").value!=document.getElementById("pass").value)
        document.getElementById('4').innerHTML="Confirm password should be same as Password";
    else
        document.getElementById('4').innerHTML="";

});
