/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


function validateAdminNewProduct(){
     if(document.getElementById("txtPName").value==""){
        alert("Please enter product name !");
        return false;
    }

    if(document.getElementById("FileImage").value==""){
        alert("Please browse product image !");
        return false;
    }
   

    if(document.getElementById("textSizeWeight").value==""){
        alert("Please enter product size/weight !");
        return false;
    }

     if(document.getElementById("textMFGDate").value==""){
        alert("Please select product manufacturing date !");
        return false;
    }
    if(document.getElementById("textExpDate").value==""){
        alert("Please select product expiry date date !");
        return false;
    }
    if(document.getElementById("textPrice").value==""){
        alert("Please enter product price !");
        return false;
    }
    if(document.getElementById("textQuantity").value==""){
        alert("Please enter product quantity !");
        return false;
    }
}