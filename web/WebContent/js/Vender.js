/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function validateVender(){
     if(document.getElementById("txtCName").value==""){
        alert("Please enter vender name !");
        return false;
    }

    if(document.getElementById("txtQuality").value==""){
        alert("Please enter vender address !");
        return false;
    }


    if(document.getElementById("txtMobile").value==""){
        alert("Please enter vender mobile no. !");
        return false;
    }

     if(document.getElementById("txtEmail").value==""){
        alert("Please enter vender email Id !");
        return false;
    }
    if(document.getElementById("txtDate").value==""){
        alert("Please select vender joining date !");
        return false;
    }
  
}