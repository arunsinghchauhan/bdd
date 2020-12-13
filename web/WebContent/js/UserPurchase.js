/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function validateUserPurchase(){
     if(document.getElementById("cmbProName").value=="-1"){
        alert("Please select product Name !");
        return false;
    }

    if(document.getElementById("txtSeizeWeight").value==""){
        alert("Please enter product size/weight!");
        return false;
    }


    if(document.getElementById("txtPrice").value==""){
        alert("Please enter product price !");
        return false;
    }

     if(document.getElementById("txtQuantity").value==""){
        alert("Please enter product quantity !");
        return false;
    }
  
    if(document.getElementById("cmbBankName").value=="-1"){
        alert("Please select bank name which banch you want to pay the amount !");
        return false;
    }
     if(document.getElementById("txtAccountNo").value==""){
        alert("Please enter Account No !");
        return false;
    }
     if(document.getElementById("txtPassword").value==""){
        alert("Please enter Password !");
        return false;
    }
}