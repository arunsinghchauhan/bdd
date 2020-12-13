/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

// function for tabs
function tabopen5(activetab,tabgroupname)
{
    var totaltabs = 5;
    var activetabheadclass = "producttabheadactive";
    var tabheadclass = "producttabhead";

    for(var i=1; i<=totaltabs; i++)
    {
        var tabhead = tabgroupname + 'h' + i;
        var tabcontent = tabgroupname + 'c' + i;
        if(i == activetab)
        {
            document.getElementById(tabhead).className = activetabheadclass;
            document.getElementById(tabcontent).style.display = 'block';
        }
        else
        {
            document.getElementById(tabhead).className = tabheadclass;
            document.getElementById(tabcontent).style.display = 'none';
        }
    }
}


 






function generateRow() {
    var d=document.getElementById("trID");
    d.innerHTML+="<input type='text' name='txt1'>";
    d.innerHTML+="<input type='text' name='txt2'>" ;
    d.innerHTML+="<input type='text' name='txt3'>" ;
    d.innerHTML+="<input type='text' name='txt4'><br>" ;
    numLinesAdded++;
}



function validateLogin(){
    if(document.getElementById("txtname").value==""){
        alert("Please enter login name !");
        return false;
    }

    if(document.getElementById("txtpwd").value==""){
        alert("Please enter your password !");
        return false;
    }

}

function validateAdminLogin(){
     if(document.getElementById("cmbType").value=="-1"){
        alert("Please select login type !");
        return false;
    }
    if(document.getElementById("txtname").value==""){
        alert("Please enter login name !");
        return false;
    }

    if(document.getElementById("txtpwd").value==""){
        alert("Please enter your password !");
        return false;
    }

}




function validatepassword(){
    if(document.getElementById("txtUserName").value==""){
        alert("Please enter user name !");
        return false;
    }
    if(document.getElementById("txtPassword").value!=document.getElementById("ConfPass").value){
        alert("Please, enter correct confirm password !");
        return false;
    }

    if(document.getElementById("EmailID").value==""){
        alert("Please enter your Email id !");
        return false;
    }
}




function changepassword(){
    if(document.getElementById("UserName").value==""){
        alert("Please enter user name !");
        return false;
    }
   

    if(document.getElementById("NewPassword").value!=document.getElementById("ConfPass").value){
        alert("Please, enter correct confirm password !");
        return false;
    }
}



function validateAdminpassword(){
     if(document.getElementById("cmbType").value=="-1"){
        alert("Please select user type  !");
        return false;
    }

    if(document.getElementById("txtUserName").value==""){
        alert("Please enter user name !");
        return false;
    }
    if(document.getElementById("txtPassword").value!=document.getElementById("ConfPass").value){
        alert("Please, enter correct confirm password !");
        return false;
    }

    if(document.getElementById("EmailID").value==""){
        alert("Please enter your Email id !");
        return false;
    }
}