/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function validateVenderPurchase(){
     if(document.getElementById("cmbProId").value=="-1"){
        alert("Please select product Id !");
        return false;
    }

    if(document.getElementById("cmbVendId").value=="-1"){
        alert("Please select Vender Id !");
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
    if(document.getElementById("txtMFGDate").value==""){
        alert("Please select product manufacturing date !");
        return false;
    }
    if(document.getElementById("txtEXPDate").value==""){
        alert("Please select product expiry date !");
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