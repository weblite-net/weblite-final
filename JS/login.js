

document.getElementById("pass").addEventListener("blur",function(){

    if ((document.getElementById("pass").value).length<8)
        document.getElementById('3').innerHTML="Password should be atleast 8 characters long";
    else
        document.getElementById('3').innerHTML="";

});

