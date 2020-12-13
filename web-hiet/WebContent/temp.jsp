<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>ORIENTAL BANK OF COMMERCE </title>
    
    <meta content='IE=EmulateIE7' http-equiv='X-UA-Compatible' />

    <script src="../CSS/jquery.min.js" type="text/javascript"></script>

    <link href="../CSS/ddsmoothmenu-v.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/top_mnu.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/ddsmoothmenu.css" rel="stylesheet" type="text/css" />

    <script src="../CSS/ddsmoothmenu.js" type="text/javascript"></script>

    <script src="../CSS/js.js" type="text/javascript"></script>

    <link href="../CSS/StyleSheet.css" rel="stylesheet" type="text/css" />

    <script src="../CSS/textsizer.js" type="text/javascript"></script>

    <script src="../CSS/jquery.li-scroller.1.0.js" type="text/javascript"></script>
<script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js'></script>

    <script type="text/javascript">



	$(document).ready(function () {
  
    $(".menu_left").html($(".menu_left").html().replace("Proton", ""));


    //alert($(".menu_left").html());
        });


        ddsmoothmenu.init({
            mainmenuid: "smoothmenu2", //Menu DIV id
            orientation: 'v', //Horizontal or vertical menu: Set to "h" or "v"
            classname: 'ddsmoothmenu-v', //class added to menu's outer DIV
            //customtheme: ["#804000", "#482400"],
            contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
        })

    </script>

    
    <meta name="author" content="www.obcindia.co.in" />
    <meta name="description" content="Welcome towards Oriental Bank of Commerce (OBC), the nation's leading financial institution and house for everybody of your personal financial needs. Oriental Bank of Commerce (OBC) Group bids loans, advice, and an array of customized resources towards many growing countries and countries within transition." />
    <meta name="keywords" content="Home Loan, Housing Loan, Personal Loan, Personal Loan Online, Banking Services, Oriental Banking Services, Saving Accounts, Oriental Bank of Commerce." />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="language" content="English" />

    <script language="javascript" type="text/javascript">
//<![CDATA[ 

/***********************************************
* Amazon style Drop-in content box- © Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit DynamicDrive.com for hundreds of DHTML scripts
* This notice must stay intact for legal use
* Go to http://www.dynamicdrive.com/ for full source code
***********************************************/

var dropboxleft=300 //set left position of box (in px)
var dropboxtop=200 //set top position of box (in px)
var dropspeed=18 //set speed of drop animation (larger=faster)

//Specify display mode. 3 possible values are:
//1) "always"- This makes the fade-in box load each time the page is displayed
//2) "oncepersession"- This uses cookies to display the fade-in box only once per browser session
//3) integer (ie: 5)- Finally, you can specify an integer to display the box randomly via a frequency of 1/integer...
// For example, 2 would display the box about (1/2) 50% of the time the page loads.

var displaymode="always"

///Don't edit beyond here///////////

if (parseInt(displaymode)!=NaN)
var random_num=Math.floor(Math.random()*displaymode)
var ie=document.all
var dom=document.getElementById

function initboxv2(){
	
if (!dom&&!ie)
return
crossboxcover=(dom)?document.getElementById("dropinboxv2cover") : document.all.dropinboxv2cover
crossbox=(dom)?document.getElementById("dropinboxv2"): document.all.dropinboxv2
scroll_top=(ie)? truebody().scrollTop : window.pageYOffset
crossbox.height=crossbox.offsetHeight
crossboxcover.style.height=parseInt(crossbox.height)+"px"
crossbox.style.top=crossbox.height*(-1)+"px"
crossboxcover.style.left=dropboxleft+"px"
crossboxcover.style.top=dropboxtop+"px"
crossboxcover.style.visibility=(dom||ie)? "visible" : "show"
dropstart=setInterval("dropinv2()",5)
<!--setTimeout("initboxv2(\'dropinboxv2cover\',\'\',\'hide\')",5000);-->
}

function dropinv2(){
scroll_top=(ie)? truebody().scrollTop : window.pageYOffset
if (parseInt(crossbox.style.top)<0){
crossboxcover.style.top=scroll_top+dropboxtop+"px"
crossbox.style.top=parseInt(crossbox.style.top)+dropspeed+"px"
}
else{
clearInterval(dropstart)
crossbox.style.top=0
}
}

function dismissboxv2(){
if (window.dropstart) clearInterval(dropstart)
crossboxcover.style.visibility="hidden"
}

function truebody(){
return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body
}

function get_cookie(Name) {
var search = Name + "="
var returnvalue = ""
if (document.cookie.length > 0) {
offset = document.cookie.indexOf(search)
if (offset != -1) {
offset += search.length
end = document.cookie.indexOf(";", offset)
if (end == -1)
end = document.cookie.length;
returnvalue=unescape(document.cookie.substring(offset, end))
}
}
return returnvalue;
}

if (displaymode=="oncepersession" && get_cookie("droppedinv2")=="" || displaymode=="always" || parseInt(displaymode)!=NaN && random_num==0){
if (window.addEventListener)
window.addEventListener("onclick", initboxv2, false)
else if (window.attachEvent)
window.attachEvent("onclick", initboxv2)
else if (document.getElementById || document.all)
window.onclick=initboxv2
if (displaymode=="oncepersession")
document.cookie="droppedinv2=yes"
}


function setVisibility(id, visibility) {
document.getElementById(dropinboxv2).style.display = visibility;
}


//]]> 
    </script>

    <style type="text/css">
   
        #dropinboxv2cover
        {
            z-index: 1000;
            visibility: hidden;
            width: 400px;
            position: absolute;
            height: 350px;
        }
        #dropinboxv2
        {
            left: 0px;
            position: absolute;
            top: 0px;
        }
    </style>
</head>
<body>
   
    <form name="aspnetForm" method="post" action="index.aspx" id="aspnetForm">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUENTM4MQ9kFgJmD2QWAgIBD2QWDgIFD2QWAgIBDxYCHglpbm5lcmh0bWwFjg08ZGl2IGlkPSdzbW9vdGhtZW51MicgY2xhc3M9J2Rkc21vb3RobWVudS12Jz48dWw+PGxpPjxhIGhyZWY9JyMnPjxzcGFuPlRlY2hub2xvZ3k8L3NwYW4+PC9hPjx1bD48bGk+PGEgaHJlZj0ndGVjaG5vbG9neV9kZXMuYXNweD9tZW51X2lkPTEnPklUIEluaXRpYXRpdmVzIFRha2VuIGJ5IFRoZSBCYW5rPC9hPjwvbGk+PGxpPjxhIGhyZWY9J3RlY2hub2xvZ3lfZGVzLmFzcHg/bWVudV9pZD05Jz5BdXRvbWF0ZWQgVGVsbGVyIE1hY2hpbmU8L2E+PC9saT48bGk+PGEgaHJlZj0ndGVjaG5vbG9neV9kZXMuYXNweD9tZW51X2lkPTQnPkludGVybmF0aW9uYWwgUHJvdG9uIERlYml0IENhcmQ8L2E+PC9saT48bGk+PGEgaHJlZj0ndGVjaG5vbG9neV9kZXMuYXNweD9tZW51X2lkPTUnPlNNUyBCYW5raW5nPC9hPjwvbGk+PGxpPjxhIGhyZWY9J3RlY2hub2xvZ3lfZGVzLmFzcHg/bWVudV9pZD04Jz5Nb2JpbGUgQmFua2luZzwvYT48L2xpPjwvdWw+PC9saT48bGk+PGEgaHJlZj0naW50ZXJuZXRfYmFua2luZy5hc3B4Jz48c3Bhbj5JbnRlcm5ldCBCYW5raW5nPC9zcGFuPjwvYT48L2xpPjxsaT48YSBocmVmPSdpbm5lci5hc3B4P3N0YXR1cz0zJmFtcDttZW51X2lkPTU0Jz48c3Bhbj5SVEdTPC9zcGFuPjwvYT48L2xpPjxsaT48YSBocmVmPSdpbm5lci5hc3B4P3N0YXR1cz0zJmFtcDttZW51X2lkPTU1Jz48c3Bhbj5ORUZUPC9zcGFuPjwvYT48L2xpPjxsaT48YSBocmVmPSdpbm5lci5hc3B4P3N0YXR1cz0zJmFtcDttZW51X2lkPTU2Jz48c3Bhbj5Hb3Z0LiBCdXNpbmVzczwvc3Bhbj48L2E+PHVsIGlkPSdnb3Z0Jz48bGk+PGEgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9MyZhbXA7bWVudV9pZD01Nic+R292dC4gQnVzaW5lc3M8L2E+PC9saT48bGk+PGEgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9bDEmYW1wO21lbnVfaWQ9MzYnPk5ldyBQZW5zaW9uIFN5c3RlbSAoTlBTKTwvYT48L2xpPjwvdWw+PC9saT48bGk+PGEgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9MyZhbXA7bWVudV9pZD02MCc+PHNwYW4+Q2FzaCBNYW5hZ2VtZW50IFNlcnZpY2U8L3NwYW4+PC9hPjwvbGk+PGxpPjxhIGhyZWY9J2lubmVyLmFzcHg/c3RhdHVzPTMmYW1wO21lbnVfaWQ9NTgnPjxzcGFuPkRlTUFUIFNlcnZpY2VzPC9zcGFuPjwvYT48L2xpPjxsaT48YSBocmVmPSdpbm5lci5hc3B4P3N0YXR1cz0zJmFtcDttZW51X2lkPTQ1Jz48c3Bhbj5OUkkgU2VydmljZXM8L3NwYW4+PC9hPjwvbGk+PGxpPjxhIGhyZWY9J2lubmVyLmFzcHg/c3RhdHVzPTImYW1wO21lbnVfaWQ9MjcnPjxzcGFuPkZsZXhpIEZpeGVkIERlcG9zaXQgU2NoZW1lPC9zcGFuPjwvYT48L2xpPjxsaT48YSBocmVmPSdpbm5lci5hc3B4P3N0YXR1cz0yJmFtcDttZW51X2lkPTMzJz48c3Bhbj5UYXggU2F2aW5nIFRlcm0gRGVwb3NpdCBTY2hlbWU8L3NwYW4+PC9hPjwvbGk+PGxpPjxhIGhyZWY9J2lubmVyLmFzcHg/c3RhdHVzPWwxJmFtcDttZW51X2lkPTEwJz48c3Bhbj5TZWN1cml0eSBBbGVydDwvc3Bhbj48L2E+PC9saT48bGk+PGEgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9bDEmYW1wO21lbnVfaWQ9NDAnPjxzcGFuPlN1Ym1pdCBDb21wbGFpbnQ8L3NwYW4+PC9hPjwvbGk+PGxpPjxhIGhyZWY9J0JpbGxpbmdfc3RhdHVzLmFzcHgnPjxzcGFuPkJpbGwgU3RhdHVzPC9zcGFuPjwvYT48L2xpPjwvdWw+PC9kaXY+ZAIHDw8WAh4EVGV4dAUIMTkyMDQ5ODhkZAIJDw8WAh8BBfcDPGEgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9MiZhbXA7bWVudV9pZD0zOCc+SG91c2luZyBMb2FuPC9hPiwmbmJzcDs8YSBocmVmPSdpbm5lci5hc3B4P3N0YXR1cz0yJmFtcDttZW51X2lkPTM5Jz5DYXIvIFZlaGljbGUgTG9hbjwvYT4sJm5ic3A7PGEgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9MiZhbXA7bWVudV9pZD00MSc+IFBlcnNvbmFsIExvYW48L2E+LCZuYnNwOzxhIGhyZWY9J2lubmVyLmFzcHg/c3RhdHVzPTImYW1wO21lbnVfaWQ9NDAnPkVkdWNhdGlvbiBMb2FuPC9hPiwmbmJzcDs8YSBocmVmPSdsb2FuX2Rlcy5hc3B4P21lbnVfaWQ9NSc+QWR2YW5jZXMgdG8gTWlub3JpdHkgQ29tbXVuaXRpZXMgLSBBcyBwZXIgU0FDSEFSIGNvbW1pdHRlZTwvYT4sJm5ic3A7PGEgaHJlZj0nbG9hbl9kZXMuYXNweD9tZW51X2lkPTYnPkxpc3Qgb2YgQmVuZWZpY2lhcmllcyB1bmRlciBBZ3JpY3VsdHVyZSBEZWJ0IFdhaXZlciBhbmQgRGVidCBSZWxpZWYgU2NoZW1lIC0gMjAwODwvYT5kZAILDw8WAh8BBYkEPGEgdGl0bGU9J1NhdmluZyBBY2NvdW50cycgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9MiZhbXA7bWVudV9pZD0yOSc+U2F2aW5nIEFjY291bnRzPC9hPiwmbmJzcDs8YSB0aXRsZT0nQ3VycmVudCBBY2NvdW50cycgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9MiZhbXA7bWVudV9pZD0zMCc+Q3VycmVudCBBY2NvdW50czwvYT4sJm5ic3A7PGEgdGl0bGU9J1Rlcm0gRGVwb3NpdCcgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9MiZhbXA7bWVudV9pZD0zMSc+VGVybSBEZXBvc2l0PC9hPiwmbmJzcDs8YSB0aXRsZT0nVGF4IFNhdmluZyBUZXJtIERlcG9zaXQgRmxleGkgRml4ZWQgRGVwb3NpdCcgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9MiZhbXA7bWVudV9pZD0zMyc+VGF4IFNhdmluZyBUZXJtIERlcG9zaXQgRmxleGkgRml4ZWQgRGVwb3NpdDwvYT4sJm5ic3A7PGEgdGl0bGU9J1ZhcmlhYmxlIFByb2dyZXNzaXZlIERlcG9zaXQnIGhyZWY9J3VuZGVyLmh0bSc+VmFyaWFibGUgUHJvZ3Jlc3NpdmUgRGVwb3NpdDwvYT5kZAINDw8WAh8BBeECPGEgaHJlZj0ndGVjaG5vbG9neV9kZXMuYXNweD9tZW51X2lkPTEnPklUIEluaXRpYXRpdmVzIFRha2VuIGJ5IFRoZSBCYW5rPC9hPiwmbmJzcDs8YSBocmVmPSd0ZWNobm9sb2d5X2Rlcy5hc3B4P21lbnVfaWQ9OSc+QXV0b21hdGVkIFRlbGxlciBNYWNoaW5lPC9hPiwmbmJzcDs8YSBocmVmPSd0ZWNobm9sb2d5X2Rlcy5hc3B4P21lbnVfaWQ9NCc+SW50ZXJuYXRpb25hbCBEZWJpdCBDYXJkPC9hPiwmbmJzcDs8YSBocmVmPSd0ZWNobm9sb2d5X2Rlcy5hc3B4P21lbnVfaWQ9NSc+U01TIEJhbmtpbmc8L2E+LCZuYnNwOzxhIGhyZWY9J3RlY2hub2xvZ3lfZGVzLmFzcHg/bWVudV9pZD04Jz5Nb2JpbGUgQmFua2luZzwvYT5kZAIPDxYCHwAFoQINCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPG9sPjxsaT48YSBocmVmPSJodHRwOi8vd3d3LmlyY3RjLmNvLmluIj5JUkNUQyBmb3IgUmFpbHdheSBSZXNlcnZhdGlvbjwvYT48L2xpPg0KPGxpPjxhIGhyZWY9Imh0dHA6Ly9yYmkub3JnLmluL2hvbWUuYXNweCI+UmVzZXJ2ZSBCYW5rIG9mIEluZGlhPC9hPjwvbGk+DQo8bGk+PGEgaHJlZj0iaHR0cDovL2lpYmYub3JnLmluIj5JbmRpYW4gSW5zdGl0dXRlIG9mIEJhbmtpbmcgJmFtcDsgRmluYW5jZTwvYT48L2xpPjwvb2w+ZAIXD2QWAgIBDxYCHwAFqgsNCiAgICA8dWw+PGxpPjxhIGhyZWY9J2lubmVyLmFzcHg/c3RhdHVzPUIxJmFtcDttZW51X2lkPTExJyB0aXRsZT0nQ29udGFjdCBVcyc+Q29udGFjdCBVczwvYT48L2xpPjxsaT48YSBocmVmPSdGb3Jtc1dhcmVob3VzZS5hc3B4JyB0aXRsZT0nRm9ybXMgV2FyZWhvdXNlJz5Gb3JtcyBXYXJlaG91c2U8L2E+PC9saT48bGk+PGEgaHJlZj0nZmFxLmFzcHgnIHRpdGxlPSdGQVFzICc+RkFRcyA8L2E+PC9saT48bGk+PGEgaHJlZj0naW5uZXIuYXNweD9zdGF0dXM9QjEmYW1wO21lbnVfaWQ9MzknIHRpdGxlPSdBY2Nlc3MgS2V5Jz5BY2Nlc3MgS2V5PC9hPjwvbGk+PGxpPjxhIGhyZWY9J0ludGVyZXN0X0NhbGMuYXNweCcgdGl0bGU9J0ludGVyZXN0IENhbGN1bGF0b3InPkludGVyZXN0IENhbGN1bGF0b3I8L2E+PC9saT48bGk+PGEgaHJlZj0nRU1JX0NhbC5hc3B4JyB0aXRsZT0nRU1JIENhbGN1bGF0b3InPkVNSSBDYWxjdWxhdG9yPC9hPjwvbGk+PGxpPjxhIGhyZWY9Jy4uL3VwbG9hZC9vYmMvTGVmdEJvdHRvbU1lbnVFbmdsaXNoX0xpc3RvZkhvbGlkYXlzLnBkZicgdGFyZ2V0PSdfYmxhbmsnIHRpdGxlPSdMaXN0IG9mIEhvbGlkYXlzJz5MaXN0IG9mIEhvbGlkYXlzPC9hPjwvbGk+PGxpPjxhIGhyZWY9J2lubmVyLmFzcHg/c3RhdHVzPUIxJmFtcDttZW51X2lkPTE2JyB0aXRsZT0nRGlzY2xhaW1lcic+RGlzY2xhaW1lcjwvYT48L2xpPjxsaT48YSBocmVmPScuLi91cGxvYWQvb2JjL0xlZnRCb3R0b21NZW51RW5nbGlzaF9PQkNfUHJpdmFjeV9Qb2xpY3kucGRmJyB0YXJnZXQ9J19ibGFuaycgdGl0bGU9JzxiciAvPlByaXZhY3kgUG9saWN5Jz48YnIgLz5Qcml2YWN5IFBvbGljeTwvYT48L2xpPjxsaT48YSBocmVmPScuLi91cGxvYWQvb2JjL0xlZnRCb3R0b21NZW51RW5nbGlzaF9PQkNfSHlwZXJsaW5rX1BvbGljeS5wZGYnIHRhcmdldD0nX2JsYW5rJyB0aXRsZT0nSHlwZXJsaW5rIFBvbGljeSc+SHlwZXJsaW5rIFBvbGljeTwvYT48L2xpPjxsaT48YSBocmVmPSdpbm5lci5hc3B4P3N0YXR1cz1CMSZhbXA7bWVudV9pZD0zMicgdGl0bGU9JzxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuNXB4O3RleHQtZGVjb3JhdGlvbjpub25lOyI+fCAmbmJzcDsmbmJzcDs8L3NwYW4+U2l0ZSBVdGlsaXRpZXMnPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuNXB4O3RleHQtZGVjb3JhdGlvbjpub25lOyI+fCAmbmJzcDsmbmJzcDs8L3NwYW4+U2l0ZSBVdGlsaXRpZXM8L2E+PC9saT48bGkgY2xhc3M9J2xhc3QnPjxhIGhyZWY9J2lubmVyLmFzcHg/c3RhdHVzPUIxJmFtcDttZW51X2lkPTM2JyB0aXRsZT0nTmV3IFBlbnNpb24gU3lzdGVtIChOUFMpJz5OZXcgUGVuc2lvbiBTeXN0ZW0gKE5QUyk8L2E+PC9saT48bGk+PGEgaHJlZj0nc2l0ZV9zaXRlTWFwLmFzcHgnIGFjY2Vzc2tleT0ncycgdGl0bGU9J1NpdGUgTWFwJz5TaXRlIE1hcDwvYT48L2xpPjwvdWw+ZGRMo0/+1IVBTA/ru1gkBU34F3EZcw==" />
</div>

<div>

	<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
	<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
</div>
        <div class="main">
            <div class="inner" id="con_whole">
                <!-- header Start -->
                <div class="wrap">
                    <div class="wrap" style="height: 125px;">
                        <a href="index.aspx">
                            <img src="../new_img/logo.jpg" alt="obc" /></a>
                    </div>
                    <!-- header end -->
                    <div class="wrap">
                        
<div class="skip">
    <a href="#navmenu">Skip to main content</a><a class="hindi" title="Hindi Site" href="../sitehindi/index.aspx">&#2361;&#2367;&#2344;&#2381;&#2342;&#2368;
        &#2352;&#2370;&#2346;&#2366;&#2306;&#2340;&#2352;&#2339;</a></div>
<div class="wrap">
    <div class="menu_bg" id="main">
        <div id="ctl00_Test_top_bar1_lblmenu" class="example"><ul id='navmenu'><li><a class='current' href='#'><span>Financial</span></a><ul><li><a href='#'>Annual Report >></a><ul><li><a href='inner.aspx?status=3&amp;menu_id=244'>Annual Report 2012-13</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_OBC_Annual_Report_2011-12.pdf' target='_blank'>Annual Report 2011-12</a></li></ul></li><li><a href='#'>Balance Sheet and Profit &amp; Loss A/C >></a><ul><li><a href='../upload/obc/MainMenuEnglishLevel-3_BALANCE_SHEET_31.03.12.pdf' target='_blank'>Balance Sheet and Profit &amp; Loss A/C</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_SCHEDULES_(PART_B)_31.03.2012.pdf' target='_blank'>Schedules</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_NOTES_TO_ACCOUNTS_31_MARCH_2011-12_F.pdf' target='_blank'>Notes on Account</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_SIGNIFICANT_ACCOUNTING_POLICY-31.03.12.pdf' target='_blank'>Accounting Policies</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_CASH_FLOW_31032012.pdf' target='_blank'>Cash Flow Statement</a></li></ul></li><li><a href='#'>Quarterly Results&nbsp;&nbsp;>></a><ul><li><a href='inner.aspx?status=3&amp;menu_id=242'>March - 2013</a></li><li><a href='inner.aspx?status=3&amp;menu_id=239'>Presentation March 2013</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_MainMenuEnglishLevel-3_listing.pdf' target='_blank'>December 2012</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_LISTING_RESULTS_1.pdf' target='_blank'>September 2012</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_Oriental_Bank_of_Commerce2_300712.pdf' target='_blank'>JUNE 2012</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_AUDITED_FINANCIAL_RESULTS_-_31.03.2012.pdf' target='_blank'>March 2012</a></li></ul></li><li><a href='#'>Disclosure Documents under Pillar III of Basel-II</a><ul><li><a href='inner.aspx?status=3&amp;menu_id=243'>31st March 2013</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_Disclosure-DEC_12.pdf' target='_blank'>31st December 2012</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_PILLAR_3_DISCLOSURES_UNDER_BASEL_II_30.09.2012.pdf' target='_blank'>30th September 2012</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_Disclosure-_JUNE12.pdf' target='_blank'>June 2012</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_PILLAR_3_DISCLOSURES_UNDER_BASEL_II_31.03.pdf' target='_blank'>MARCH 2012</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_DisclosureSep2011.pdf' target='_blank'>Sep 2011</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_disclosureJune2011.pdf' target='_blank'>June 2011</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_disclosureunderbaseIIjune.pdf' target='_blank'>March 2011</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_Basel2Dec2010_.pdf' target='_blank'>Dec 2010</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_sep2010basel2.pdf' target='_blank'>Sep 2010</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_June10BaselII.pdf' target='_blank'>June 2010</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_BaselII.pdf' target='_blank'>March 2010</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_baseldec9.pdf' target='_blank'>Dec 2009</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_baseldisclosures.pdf' target='_blank'>Sep 2009</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_desc.pdf' target='_blank'>June 2009</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_MainMenuEnglishLevel-3_basel2[1].pdf' target='_blank'>March 2009</a></li></ul></li></ul></li><li><a  href='#'><span>Deposit Schemes</span></a><ul><li><a href='inner.aspx?status=2&amp;menu_id=127'>Oritenal Double Deposit Scheme</a></li><li><a href='inner.aspx?status=2&amp;menu_id=119'>Oriental Salary Plus</a></li><li><a href='inner.aspx?status=2&amp;menu_id=29'>Saving Accounts</a></li><li><a href='inner.aspx?status=2&amp;menu_id=28'>Basic Banking Account</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-2_MainMenuEnglishLevel-2_unnati1.pdf' target='_blank'>Unnati Deposit Scheme</a></li><li><a href='inner.aspx?status=2&amp;menu_id=35'>Jeevan Sarathi for Physically Challenged</a></li><li><a href='inner.aspx?status=2&amp;menu_id=112'>SB Vidyarthi</a></li><li><a href='inner.aspx?status=2&amp;menu_id=30'>Current Accounts</a></li><li><a href='inner.aspx?status=2&amp;menu_id=36'>Pragati Deposit Scheme</a></li><li><a href='inner.aspx?status=2&amp;menu_id=31'>Term Deposit</a></li><li><a href='inner.aspx?status=2&amp;menu_id=27'>Flexi Fixed Deposit Scheme</a></li><li><a href='inner.aspx?status=2&amp;menu_id=33'>Tax Saving Term Deposit</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-2_VARISHTHA_SAMMAN_DEPOSIT_SCHEME_10.06.2013.pdf' target='_blank'>Varishtha Samman</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-2_Capital_Gains_Accounts_Scheme_1988_on_OBC_web.pdf' target='_blank'>Capital Gains Accounts Scheme1988</a></li><li><a href='inner.aspx?status=2&amp;menu_id=113'>Progressive Deposit General</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-2_MainMenuEnglishLevel-2_OBC_Aadhar_July_2011_new.pdf' target='_blank'>OBC Aadhar</a></li></ul></li><li><a  href='#'><span>Loan</span></a><ul><li><a href='#'>Retail Schemes</a><ul><li><a href='inner.aspx?status=3&amp;menu_id=254'>Housing Loan</a></li><li><a href='inner.aspx?status=3&amp;menu_id=255'>Education Loan</a><ul><li><a href='inner.aspx?status=4&amp;menu_id=65'>Education Loan scheme</a></li><li><a href='inner.aspx?status=4&amp;menu_id=66'>Education Loan scheme IIMs IITs XLRIs</a></li><li><a href='inner.aspx?status=4&amp;menu_id=67'>Education Loan scheme ISBs</a></li><li><a href='inner.aspx?status=4&amp;menu_id=68'>Education Loan scheme_Vocational Education & Training</a></li><li><a href='inner.aspx?status=4&amp;menu_id=69'>Education Loan scheme_Working proffessional</a></li><li><a href='inner.aspx?status=4&amp;menu_id=70'>List of Approved Educational Institutions</a></li><li><a href='inner.aspx?status=4&amp;menu_id=71'>List of Eligible Educational Institutions for Interest Subsidy</a></li></ul></li><li><a href='inner.aspx?status=3&amp;menu_id=256'>Vehicle Loan</a></li><li><a href='inner.aspx?status=3&amp;menu_id=257'>Oriental Stree Shakti</a></li><li><a href='inner.aspx?status=3&amp;menu_id=258'>Personal Loan for Govt. / PSU Employees</a></li><li><a href='inner.aspx?status=3&amp;menu_id=259'>Personal Loan for Corporate Employees</a></li><li><a href='#'>Loan Against Property</a><ul><li><a href='inner.aspx?status=4&amp;menu_id=73'>Oriental Business Loan Scheme</a></li><li><a href='inner.aspx?status=4&amp;menu_id=72'>Oriental Mortgage Loan Scheme</a></li></ul></li><li><a href='inner.aspx?status=3&amp;menu_id=261'>Loan to Traders</a></li><li><a href='inner.aspx?status=3&amp;menu_id=262'>Financing Autos & Taxis</a></li><li><a href='inner.aspx?status=3&amp;menu_id=263'>Loan to  Doctors</a></li><li><a href='inner.aspx?status=3&amp;menu_id=264'>Loan to Other Professionals</a></li><li><a href='inner.aspx?status=3&amp;menu_id=266'>Finance Against Govt. Securities</a></li><li><a href='inner.aspx?status=3&amp;menu_id=252'>Loan against Gold Ornaments</a></li><li><a href='inner.aspx?status=3&amp;menu_id=247'>Earnest Money</a></li><li><a href='inner.aspx?status=3&amp;menu_id=267'>Loan against Deposits</a></li><li><a href='inner.aspx?status=3&amp;menu_id=253'>Scheme for Women Enterprises</a></li><li><a href='inner.aspx?status=3&amp;menu_id=249'>Scheme-Model Scheme for Study in India & Abroad</a></li></ul></li><li><a href='inner.aspx?status=2&amp;menu_id=129'>Loan against Deposit</a></li><li><a href='inner.aspx?status=2&amp;menu_id=121'>Oriental Reverse Mortgage Scheme</a></li><li><a href='#'>Loan schemes for minority community main website</a><ul><li><a href='inner.aspx?status=3&amp;menu_id=159'>Housing Loan</a></li><li><a href='inner.aspx?status=3&amp;menu_id=163'>Educational Loan Scheme</a></li><li><a href='inner.aspx?status=3&amp;menu_id=164'>Personal Loan Scheme</a></li><li><a href='inner.aspx?status=3&amp;menu_id=166'>Loans to Professionals</a></li><li><a href='inner.aspx?status=3&amp;menu_id=167'>Clean Loan to Traders</a></li><li><a href='inner.aspx?status=3&amp;menu_id=168'>Loan to defence personnel</a></li><li><a href='#'>Loan to SMEs&nbsp;&nbsp;>></a><ul><li><a href='inner.aspx?status=4&amp;menu_id=60'>Loan to SMEs</a></li><li><a href='inner.aspx?status=4&amp;menu_id=61'>List of Regional MSME Centers</a></li><li><a href='inner.aspx?status=4&amp;menu_id=62'>Debt Restructuring Scheme (DRS) for Small and Medium Enterprises (SMEs)</a></li></ul></li><li><a href='#'>Loan to Women&nbsp;&nbsp;>></a><ul><li><a href='inner.aspx?status=4&amp;menu_id=56'>Oriented Mahila Vikas Yojana</a></li><li><a href='inner.aspx?status=4&amp;menu_id=57'>Scheme for Professional &amp; self Employed Women</a></li><li><a href='inner.aspx?status=4&amp;menu_id=58'>Scheme for Beauty Parlor/ Boutiques/ Saloons/Tailoring</a></li><li><a href='inner.aspx?status=4&amp;menu_id=59'>Scheme for Financing Working Women</a></li></ul></li><li><a href='#'>Other Loan Schemes&nbsp;&nbsp;>></a><ul><li><a href='inner.aspx?status=4&amp;menu_id=50'>Loan against Govt. Securities</a></li><li><a href='#'>Agriculture Loan Scheme&nbsp;&nbsp;>></a></li><li><a href='inner.aspx?status=4&amp;menu_id=53'>Laghu Udhami Credit Card-Oriented business Card Scheme(OBCS)</a></li><li><a href='inner.aspx?status=4&amp;menu_id=54'>Swarojgar Credit Card Scheme</a></li><li><a href='inner.aspx?status=4&amp;menu_id=55'>Credit Guarantee Fund Trust for Micro and Small Enterprises (CGTMSE)</a></li></ul></li></ul></li><li><a href='inner.aspx?status=2&amp;menu_id=43'>Loans to Professionals</a></li><li><a href='#'>Loan to SMEs&nbsp;&nbsp;>></a><ul><li><a href='../upload/obc/MainMenuEnglishLevel-3_LOAN_APP_FORM_FOR_MSE.pdf' target='_blank'>Loan Application Form ( LF-95)</a></li><li><a href='inner.aspx?status=3&amp;menu_id=94'>Loan to SMEs</a></li><li><a href='inner.aspx?status=3&amp;menu_id=95'>List of Regional MSME Centers</a></li><li><a href='inner.aspx?status=3&amp;menu_id=96'>Debt Restructuring Scheme (DRS) for Small and Medium Enterprises (SMEs)</a></li></ul></li><li><a href='#'>Loan to Women&nbsp;&nbsp;>></a><ul><li><a href='inner.aspx?status=3&amp;menu_id=90'>Oriented Mahila Vikas Yojana</a></li><li><a href='inner.aspx?status=3&amp;menu_id=91'>Scheme for Professional &amp; self Employed Women</a></li><li><a href='inner.aspx?status=3&amp;menu_id=92'>Scheme for Beauty Parlor/ Boutiques/ Saloons/Tailoring</a></li><li><a href='inner.aspx?status=3&amp;menu_id=93'>Scheme for Financing Working Women</a></li></ul></li><li><a href='#'>Other Loan Schemes&nbsp;&nbsp;>></a><ul><li><a href='#'>Agriculture Loan Scheme&nbsp;&nbsp;>></a><ul><li><a href='inner.aspx?status=4&amp;menu_id=64'>MODEL SCHEME FOR FINANCING COCONUT FARMING</a></li><li><a href='inner.aspx?status=4&amp;menu_id=11'>Kisan Credit Card-Oriented Green Card(OGS)</a></li><li><a href='inner.aspx?status=4&amp;menu_id=12'>Composite Credit Scheme for Agricultural Leading</a></li><li><a href='#'>Overdraft Facility to Farmers</a></li><li><a href='inner.aspx?status=4&amp;menu_id=14'>Advance against Warehouse Receipts to Farmers</a></li><li><a href='inner.aspx?status=4&amp;menu_id=16'>Purchase of Land for Agriculture Purposes</a></li><li><a href='inner.aspx?status=4&amp;menu_id=17'>Agriculture Clinic &amp; Agriculture Business Centers</a></li><li><a href='inner.aspx?status=4&amp;menu_id=18'>Financing Two/Three Wheelers to Farmers</a></li><li><a href='inner.aspx?status=4&amp;menu_id=19'>Scheme for Financing Commission Agents</a></li><li><a href='inner.aspx?status=4&amp;menu_id=20'>Schemes for Financing Farmers for Purchase of Trucks and Other</a></li><li><a href='inner.aspx?status=4&amp;menu_id=21'>Scheme for Financing Farmers for Purchase of second hand Trucks and Other</a></li><li><a href='inner.aspx?status=4&amp;menu_id=22'>Scheme for purchase of Tractor</a></li><li><a href='inner.aspx?status=4&amp;menu_id=23'>Scheme for Financing Working Capital Requirement of Cold Storage</a></li><li><a href='inner.aspx?status=4&amp;menu_id=24'>Scheme for Financing Timber Merchants and Saw Mills</a></li><li><a href='inner.aspx?status=4&amp;menu_id=35'>Scheme for purchase of Second Hand Tractor</a></li><li><a href='../upload/obc/Agricultural_Loan_against_security_of_Gold_Jewellery.doc' target='_blank'>Agricultural Loan against security of Gold Jewellery</a></li></ul></li><li><a href='inner.aspx?status=3&amp;menu_id=42'>Laghu Udhami Credit Card-Oriented business Card Scheme(OBCS)</a></li><li><a href='inner.aspx?status=3&amp;menu_id=43'>Swarojgar Credit Card Scheme</a></li><li><a href='inner.aspx?status=3&amp;menu_id=98'>Credit Guarantee Fund Trust for Micro and Small Enterprises (CGTMSE)</a></li></ul></li><li><a href='inner.aspx?status=2&amp;menu_id=114'>Advances to Minority Communities - As per SACHAR committee</a></li></ul></li><li><a  href='#'><span>Services</span></a><ul><li><a href='inner.aspx?status=2&amp;menu_id=118'>Oriental Bank Mediclaim</a></li><li><a href='inner.aspx?status=2&amp;menu_id=106'>Financial Inclusion</a></li><li><a href='#'>NRI Services&nbsp;&nbsp;>></a><ul><li><a href='../upload/obc/MainMenuEnglishLevel-3_MainMenuEnglishLevel-2_LRS_SCHEME.pdf' target='_blank'>Forex Remittances Facilities to Resident</a></li><li><a href='inner.aspx?status=3&amp;menu_id=181'>Oriental NRI Premium Deposit Account.</a></li><li><a href='inner.aspx?status=3&amp;menu_id=110'>Representative Office - Dubai</a></li><li><a href='inner.aspx?status=3&amp;menu_id=45'>Facilities</a></li><li><a href='#'>Who is NRI/PIO ?&nbsp;&nbsp;>></a><ul><li><a href='inner.aspx?status=4&amp;menu_id=25'>NRI</a></li><li><a href='inner.aspx?status=4&amp;menu_id=26'>PIO</a></li><li><a href='inner.aspx?status=4&amp;menu_id=27'>How to Open the Account</a></li><li><a href='inner.aspx?status=4&amp;menu_id=28'>Mode of Remittance</a></li></ul></li><li><a href='#'>Types of Accounts&nbsp;&nbsp;>></a><ul><li><a href='inner.aspx?status=4&amp;menu_id=29'>Non-Residence External</a></li><li><a href='inner.aspx?status=4&amp;menu_id=30'>Non-Residence Ordinary</a></li><li><a href='inner.aspx?status=4&amp;menu_id=31'>Foreign Currency Non-Residence</a></li><li><a href='inner.aspx?status=4&amp;menu_id=32'>Resident Foreign Currency</a></li></ul></li><li><a href='#'>Account Opening Form&nbsp;&nbsp;>></a><ul><li><a href='https://www.obcindia.co.in/obcnew/site/Download.aspx'>FCNR/NRE/NRO/RFC</a></li></ul></li><li><a href='inner.aspx?status=3&amp;menu_id=49'>Correspondent Banks in Foreign Countries</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_OBC_-_JUL11.pdf' target='_blank'>Foreign Remittances-Tie up with Western Union Money Transfer</a></li><li><a href='inner.aspx?status=3&amp;menu_id=52'>Remittances from Abroad-Speed Credit Services</a></li></ul></li><li><a href='inner.aspx?status=2&amp;menu_id=48'>Premium Services&nbsp;&nbsp;>></a><ul><li><a href='internet_banking.aspx'>Internet Banking</a></li><li><a href='inner.aspx?status=3&amp;menu_id=54'>R.T.G.S.</a></li><li><a href='inner.aspx?status=3&amp;menu_id=55'>N.E.F.T.</a></li><li><a href='inner.aspx?status=3&amp;menu_id=56'>Online Tax Payment</a></li></ul></li><li><a href='#'>Other Services&nbsp;&nbsp;>></a><ul><li><a href='inner.aspx?status=3&amp;menu_id=176'>ASBA</a></li><li><a href='inner.aspx?status=3&amp;menu_id=58'>DMAT Account</a></li><li><a href='inner.aspx?status=3&amp;menu_id=59'>Foreign Remittances</a></li><li><a href='inner.aspx?status=3&amp;menu_id=60'>Cash Management Services</a></li></ul></li></ul></li><li><a  href='#'><span>Customer Services</span></a><ul><li><a href='../upload/obc/MainMenuEnglishLevel-2_CCSO_for_customers.pdf' target='_blank'>Chief Customer Service Officer (Internal Ombudsman)</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-2_janu_economic_bulletine_13.pdf' target='_blank'>Economic & Banking Bulletin December 2012</a></li><li><a href='#'>RTI Act 2005</a><ul><li><a href='../upload/obc/MainMenuEnglishLevel-3_IN_PERSUANCE_OF_SECTION_4_(3).pdf' target='_blank'>RTI Act 2005.</a></li><li><a href='inner.aspx?status=3&amp;menu_id=208'>Account no for fees / additional cost</a></li></ul></li><li><a href='../upload/obc/MainMenuEnglishLevel-2_list_of_Statutory_Central_Auditors.pdf' target='_blank'>List of Statutory Central Auditors</a></li><li><a href='inner.aspx?status=2&amp;menu_id=84'>Marketing /Distribution of Mutual Fund  Units /Insurance etc.</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-2_Banknote.mht' target='_blank'>Know your Bank Note</a></li><li><a href='#'>Citizen's Charter</a><ul><li><a href='../upload/obc/RBI_Citizien.pdf' target='_blank'>RBI Citizen Charter</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_Citizen_s_Charter_2013.pdf' target='_blank'>Bank Citizen Charter</a></li></ul></li><li><a href='inner.aspx?status=2&amp;menu_id=51'>Banking Ombudsman&nbsp;&nbsp;>></a><ul><li><a href='inner.aspx?status=3&amp;menu_id=194'>Nodal Officers</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_Analysis_and_Disclosure_in_financial_statements.pdf' target='_blank'>Analysis &amp; Disclosure of Complaints</a></li><li><a href='inner.aspx?status=3&amp;menu_id=65'>Miscellaneous</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_Banking_sep_2011_customer.pdf' target='_blank'>Banking Ombudsman scheme</a></li></ul></li><li><a href='#'>Policies&nbsp;&nbsp;>></a><ul><li><a href='../upload/obc/MainMenuEnglishLevel-3_KYC_Policy_Brief.pdf' target='_blank'>KYC Policy</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_Policy_for_apptt_of_SCA_SBA_2013_14.pdf' target='_blank'>SCA/SBA appointment policy</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_Financial_Inclusion_Policy_of_the_Bank_.pdf' target='_blank'>Financial Inclusion Policy</a><ul><li><a href='../upload/obc/BusiCorres.pdf' target='_blank'>Application Form For BF &amp; BC</a></li></ul></li><li><a href='inner.aspx?status=3&amp;menu_id=67'>Cheque Collection &amp; Compensation Policy</a></li><li><a href='inner.aspx?status=3&amp;menu_id=68'>Grievance Redressal</a></li><li><a href='../upload/obc/collectionofdues.pdf' target='_blank'>Policy on Collection of Dues and Repossession of Security</a></li></ul></li><li><a href='inner.aspx?status=2&amp;menu_id=53'>SSI Charter</a></li><li><a href='inner.aspx?status=2&amp;menu_id=54'>Banker's Fair Practice Code</a></li><li><a href='FormsWarehouse.aspx'>Forms Warehouse</a></li><li><a href='#'>Service Charges&nbsp;&nbsp;>></a><ul><li><a href='../upload/obc/MainMenuEnglishLevel-3_cibil.pdf' target='_blank'>Charges for Accessing CIBIL Database and Generating CIBIL Reports for Loans</a></li><li><a href='inner.aspx?status=3&amp;menu_id=71'>General Charges</a></li><li><a href='inner.aspx?status=3&amp;menu_id=72'>Foreign Exchange</a></li><li><a href='inner.aspx?status=3&amp;menu_id=73'>ATM Charges</a></li><li><a href='inner.aspx?status=3&amp;menu_id=74'>Charges on Retail Loans Schemes</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_WEBSITE_SERVICE_CHARGES_-.pdf' target='_blank'>Service Charges on Borrowal Accounts</a></li></ul></li><li><a href='../upload/obc/MainMenuEnglishLevel-2_BCSBICode28.10.09-Website.pdf' target='_blank'>Code of Bank's Commitment to Customers</a></li><li><a href='queries_suggestions.aspx'>Query &amp; Suggestions</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-2_Code__of__Banks__Commitment__to__Micro__and__Smal_l_Enterprises_2012.pdf' target='_blank'>MSE Code</a></li><li><a href='#'>Submit Complaint&nbsp;&nbsp;>></a><ul><li><a href='Complaint_Form.aspx'>Submit Complaint-Offline</a></li><li><a href='Complain_Online.aspx'>Submit Complaint-Online</a></li></ul></li></ul></li><li><a  href='#'><span>Customer Care</span></a><ul><li><a href='#'>Feedback / Complaints</a><ul><li><a href='#'><a href="https://www.obcindia.co.in/obcnew/site/Complaint_Form.aspx">Offline</a></a></li><li><a href='#'><a href="https://www.obcindia.co.in/obcnew/site/Complain_Online.aspx">Online with tracking facility</a></a></li><li><a href='#'><a href="https://www.obcindia.co.in/obcnew/site/queries_suggestions.aspx">Query & Suggestions</a></a></li></ul></li><li><a href='#'>Policies</a><ul><li><a href='#'><a href="https://www.obcindia.co.in/obcnew/upload/obc/collectionofdues.pdf">Collection of Dues & Repossession of Security Policy</a></a></li><li><a href='inner.aspx?status=3&amp;menu_id=217'>Cheque Collection & Compensation Policy</a></li><li><a href='inner.aspx?status=3&amp;menu_id=216'>Grievance Redressal Policy</a></li></ul></li><li><a href='#'>Citizen Charter</a><ul><li><a href='#'><a href="https://www.obcindia.co.in/obcnew/upload/obc/MainMenuEnglishLevel-3_Citizen_s_Charter_2013.pdf">Bank Citizen charter</a></a></li><li><a href='#'><a href="https://www.obcindia.co.in/obcnew/upload/obc/RBI_Citizien.pdf">RBI Citizen charter</a></a></li></ul></li><li><a href='#'>Codes for Customer Service</a><ul><li><a href='#'>Code of Bank’s Commitment to Micro and Small Enterprises</a></li><li><a href='#'><a href="https://www.obcindia.co.in/obcnew/upload/obc/MainMenuEnglishLevel-2_BCSBICode28.10.09-Website.pdf">Code of Bank’s Commitment to Customers</a></a></li><li><a href='inner.aspx?status=3&amp;menu_id=221'>Bank’s fair practice code for lenders</a></li></ul></li><li><a href='#'>Services Charges & Fees</a><ul><li><a href='#'><a href="https://www.obcindia.co.in/obcnew/upload/obc/MainMenuEnglishLevel-3_WEBSITE_SERVICE_CHARGES_-.pdf">Service Charges of Borrowal Accounts</a></a></li><li><a href='inner.aspx?status=3&amp;menu_id=227'>Charges on Retail Loan Schemes</a></li><li><a href='inner.aspx?status=3&amp;menu_id=226'>ATM Charges</a></li><li><a href='inner.aspx?status=3&amp;menu_id=225'>Foreign Exchange Charges</a></li><li><a href='inner.aspx?status=3&amp;menu_id=224'>General Charges</a></li><li><a href='inner.aspx?status=3&amp;menu_id=223'>Charges for accessing CIBIL database and Generating CIBIL Reports for Loans</a></li></ul></li><li><a href='#'>Contact Us</a><ul><li><a href='inner.aspx?status=3&amp;menu_id=233'>Contact Centre</a></li><li><a href='inner.aspx?status=3&amp;menu_id=231'>Network Nodal Officers</a></li><li><a href='inner.aspx?status=3&amp;menu_id=230'>Principal Nodal Officer</a></li></ul></li><li><a href='#'>Regulatory Disclosures</a><ul><li><a href='#'>Statement of complaints received and disposed</a></li></ul></li><li><a href='#'><a href="https://www.obcindia.co.in/obcnew/Site/faq.aspx">FAQs</a></a></li><li><a href='inner.aspx?status=2&amp;menu_id=144'>Disclaimers</a></li></ul></li><li><a  href='#'><span>Investor Center</span></a><ul><li><a href='inner.aspx?status=2&amp;menu_id=61'>Merchant Banking Division</a></li><li><a href='#'>Shareholding Pattern</a><ul><li><a href='../upload/obc/MainMenuEnglishLevel-3_OBE_clause35_1a.pdf' target='_blank'>Shareholding pattern of the Bank</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_OBE_clause35_others.pdf' target='_blank'>Shareholding pattern- Annexure</a></li><li><a href='../upload/obc/MainMenuEnglishLevel-3_OBE_clause35_1_vot.pdf' target='_blank'>Shareholding pattern_voting</a></li></ul></li><li><a href='inner.aspx?status=2&amp;menu_id=72'>Code of Conduct</a></li></ul></li><li><a  href='#'><span>About Us</span></a><ul><li><a href='#'><a href="https://www.obcindia.co.in/obcnew/site/Management_profile.aspx">Management</a></a></li><li><a href='inner.aspx?status=2&amp;menu_id=148'>Chief Grievances Redressal Officer</a></li><li><a href='inner.aspx?status=2&amp;menu_id=149'>Principal Nodal Officer for Complaints/Ombudsman</a></li><li><a href='inner.aspx?status=2&amp;menu_id=63'>Chief Compliance Officer</a></li><li><a href='Geo_Spread.aspx'>Organization Setup</a></li><li><a href='inner.aspx?status=2&amp;menu_id=66'>Vision &amp; Mission Statement</a></li></ul></li></ul></div>
    </div>
</div>
<div class="marquee">
    
<div class="mask">

<script src="../CSS/jquery.li-scroller.1.0.js" type="text/javascript"></script>
    <div id="ctl00_Test_top_bar1_marquee_bar1_lbl_show_data"><ul id='ticker02'><li><a href='../upload/news/PMRFDEPOSITRECEIPT.pdf' target='_blank' title='Prime Minister Relief Fund Voucher'>Prime Minister Relief Fund Voucher</a></li> <li><a href='../upload/news/Public_Notice.pdf' target='_blank' title='The cut- off date for accepting non CTS-2010 Standard Cheques in clearing extended till 31.07.2013.'>The cut- off date for accepting non CTS-2010 Standard Cheques in clearing extended till 31.07.2013.</a></li> <li><a href='inner.aspx?status=NT&amp;menu_id=229' title='Credit card bill payment options'>Credit card bill payment options</a></li> <li><a title='AVAIL INSTANT FUND TRANSFER FACILITY THROUGH IMMEDIATE PAYMENT SERVICE (IMPS) LAUNCHED BY THE BANK THROUGH NPCI (NATIONAL PAYMENT CORPORATION OF INDIA).'>AVAIL INSTANT FUND TRANSFER FACILITY THROUGH IMMEDIATE PAYMENT SERVICE (IMPS) LAUNCHED BY THE BANK THROUGH NPCI (NATIONAL PAYMENT CORPORATION OF INDIA).</a></li> <li><a href='../upload/news/SMS_alert.pdf' target='_blank' title='SMS Alert – Revised Transaction limits w.e.f. 24-12-2012'>SMS Alert – Revised Transaction limits w.e.f. 24-12-2012</a></li> <li><a href='../upload/news/ATM_card.pdf' target='_blank' title='Auto enabling of ATM Card as ATM cum Debit Card from 16 Jan 2013'>Auto enabling of ATM Card as ATM cum Debit Card from 16 Jan 2013</a></li> <li><a title='"If you have not operated your account for more than 2 years, it may have turned in-operative. Kindly contact the branch for account activation/closure.”'>"If you have not operated your account for more than 2 years, it may have turned in-operative. Kindly contact the branch for account activation/closure.”</a></li> <li><a title='The Bank is a Member of BCSBI'>The Bank is a Member of BCSBI</a></li> <li><a href='../upload/news/write__up__on__e-stamping13_april.pdf' target='_blank' title='The Bank has introduced e-stamping services in Gujarat and Karnataka'>The Bank has introduced e-stamping services in Gujarat and Karnataka.</a></li> <li><a href='../upload/news/Non_Resident_Account_opening_form.pdf' target='_blank' title='Open NRE/ NRO/ FCNR account with Oriental Bank of Commerce'>Open NRE/ NRO/ FCNR account with Oriental Bank of Commerce</a></li> <li><a title='BASIC SAVING BANK  DEPOSIT ACCOUNT '>BASIC SAVING BANK  DEPOSIT ACCOUNT</a></li> <li><a title='Our Bank is a Registrar for UID- Aadhaar Number. Enrolment process is on in Delhi, Rajasthan, Maharashtra, Haryana, Punjab, Madhya Pradesh, Chandigarh and Kerala'>Our Bank is a Registrar for UID- Aadhaar Number. Enrolment process is on in Delhi, Rajasthan, Maharashtra, Haryana, Punjab, Madhya Pradesh, Chandigarh and Kerala</a></li> <li><a href='../upload/news/Dishonour_of_Electronic_Fund_Transfer_Instructions_14Oct2011.pdf' target='_blank' title='Make use of Electronic Fund Transfer System, you will not be at disadvantageous position vis-a-vis the users of cheque payment system'>Make use of Electronic Fund Transfer System, you will not be at disadvantageous position vis-a-vis the users of cheque payment system</a></li> <li><a title='Oriental Bank Mediclaim'><a href="http://www.obcindia.co.in/obcnew/site/inner.aspx?status=2&menu_id=118">Oriental Bank Mediclaim</a></a></li> <li><a href='inner.aspx?status=NT&amp;menu_id=157' title='FUNDS TRANSFER DUE TO INSUFFICIENCY OF FUNDS'>DISHONOUR OF ELECTRONIC FUNDS TRANSFER DUE TO INSUFFICIENCY OF FUNDS</a></li> <li><a href='../upload/news/rbi_ticker_18_oct_2011.pdf' target='_blank' title='Beware of fictitious offers/lottery winnings/cheap funds offers'>Beware of fictitious offers/lottery winnings/cheap funds offers</a></li> <li><a href='../upload/news/ASBAOnline1.pdf' target='_blank' title='ASBA Online Services'>ASBA Online Services</a></li> <li><a href='../upload/news/Banknote.mht' target='_blank' title='Salient Features of Currency Note as circulated by RBI'>Salient Features of Currency Note as circulated by RBI</a></li> <li><a href='../upload/news/AlertNetBkg.pdf' target='_blank' title='NetBanking Alert'>NetBanking Alert</a></li> <li><a href='../upload/news/Cyber.pdf' target='_blank' title='Advisory on Cyber Crimes'>Advisory on Cyber Crimes</a></li> <li><a href='../upload/news/FIPolicy.pdf' target='_blank' title='Financial Inclusion Policy of the Bank'>Financial Inclusion Policy of the Bank</a></li> <li><a href='../upload/news/OLTAS.pdf' target='_blank' title='OLTAS'>List of 144 authorised OLTAS  Branches</a></li> <li><a href='../upload/news/12198573241_website.pdf' target='_blank' title='Phishing attacks reported by few Banks. Beware of phishing attempts, click for details.'>Phishing attacks reported by few Banks. Beware of phishing attempts, click for details.</a></li></ul></div>

   <script type="text/javascript" language="javascript"> 
//<![CDATA[ 
$(function(){ $("ul#ticker02").liScroll({travelocity: 0.1}); }); 
//]]> 
    </script>

</div>

</div>
<div class="wrap">
    <div class="man_lnk">
        <a href="index.aspx">Home</a>
    </div>
    <ul class="faq">
    
     <li ><a href="https://www.obconline.co.in/" title="Tenders" target="_blank">
            <img src="../new_img/globe.png" alt="Tenders" class="tender"  style="background:none;"/>
        </a><a href="https://www.obconline.co.in/" title="Tenders" target="_blank">Internet<br /> Banking</a></li>
        <li><a href="tenders.aspx" title="Tenders">
            <img src="../new_img/clear.gif" alt="Tenders" class="tender" />
        </a><a href="tenders.aspx" title="Tenders">Tenders</a></li>
        <li><a href="press_releases.aspx" title="Press Release">
            <img src="../new_img/clear.gif" alt="Press Release" class="pres" />
        </a><a href="press_releases.aspx" title="Press Release"><span style="text-align: center">
            &nbsp; Press<br />
            Release</span></a></li>
        <li><a href="../site/RecruitmentAndResult.aspx" title="RecruitmentAnd Result">
            <img src="../new_img/clear.gif" alt="RecruitmentAnd Result" class="faq1" />
        </a><a href="../site/RecruitmentAndResult.aspx" title="RecruitmentAnd Result">&nbsp;Recruitment</a> </li>
        <li><a href="atm_locater.aspx" title="ATM Locator">
            <img src="../new_img/clear.gif" alt="ATM Locator" class="atm" />
        </a><a href="atm_locater.aspx" title="ATM Locator">&nbsp;&nbsp;ATMs</a> </li>
        <li><a href="branch_locater.aspx" title="Branch Locator">
            <img src="../new_img/clear.gif" alt="Branch Locator" class="brn" />
        </a><a href="branch_locater.aspx" title="Branch Locator">Branches&nbsp;</a> </li>
    </ul>
</div>
                    </div>
                </div>
                <div class="serach_pnl">
                    <div id="ctl00_pnl_search" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_btn_submit')">
	
                        <label for="ctl00_txt_search" class="txt_s">
                            &nbsp;</label><input name="ctl00$txt_search" type="text" id="ctl00_txt_search" title="Enter text want to search" />
                        <input type="submit" name="ctl00$btn_submit" value="Search" id="ctl00_btn_submit" />
                    
</div>
                </div>
                <!-- main-nav end -->
                
                <div class="wrap">
                    <div class="left_wrap">
                        
<img src="../new_img/left_mnu.jpg" alt="OBC left Menu" class="bck_i" />
<div class="quick">
    Quick Info</div>
<div id="ctl00_test_left_bar1_lbl_data" class="menu_left"><div id='smoothmenu2' class='ddsmoothmenu-v'><ul><li><a href='#'><span>Technology</span></a><ul><li><a href='technology_des.aspx?menu_id=1'>IT Initiatives Taken by The Bank</a></li><li><a href='technology_des.aspx?menu_id=9'>Automated Teller Machine</a></li><li><a href='technology_des.aspx?menu_id=4'>International Proton Debit Card</a></li><li><a href='technology_des.aspx?menu_id=5'>SMS Banking</a></li><li><a href='technology_des.aspx?menu_id=8'>Mobile Banking</a></li></ul></li><li><a href='internet_banking.aspx'><span>Internet Banking</span></a></li><li><a href='inner.aspx?status=3&amp;menu_id=54'><span>RTGS</span></a></li><li><a href='inner.aspx?status=3&amp;menu_id=55'><span>NEFT</span></a></li><li><a href='inner.aspx?status=3&amp;menu_id=56'><span>Govt. Business</span></a><ul id='govt'><li><a href='inner.aspx?status=3&amp;menu_id=56'>Govt. Business</a></li><li><a href='inner.aspx?status=l1&amp;menu_id=36'>New Pension System (NPS)</a></li></ul></li><li><a href='inner.aspx?status=3&amp;menu_id=60'><span>Cash Management Service</span></a></li><li><a href='inner.aspx?status=3&amp;menu_id=58'><span>DeMAT Services</span></a></li><li><a href='inner.aspx?status=3&amp;menu_id=45'><span>NRI Services</span></a></li><li><a href='inner.aspx?status=2&amp;menu_id=27'><span>Flexi Fixed Deposit Scheme</span></a></li><li><a href='inner.aspx?status=2&amp;menu_id=33'><span>Tax Saving Term Deposit Scheme</span></a></li><li><a href='inner.aspx?status=l1&amp;menu_id=10'><span>Security Alert</span></a></li><li><a href='inner.aspx?status=l1&amp;menu_id=40'><span>Submit Complaint</span></a></li><li><a href='Billing_status.aspx'><span>Bill Status</span></a></li></ul></div></div>

<div style="float: left; position: relative; z-index: 800; margin-top: -3px;">
    <a href="https://www.obcindia.co.in/obcnew/site/technology_des.aspx?menu_id=8">
        <img src="../new_img/mobile.jpg" /></a></div>



                        <div class="count">
                            <div>
                                Visitor No.: &nbsp;
                                <span id="ctl00_lbl_counter">19204988</span>
                            </div>
                            <div>
                                <br />
                                <br />
                                <br />
                            </div>
                            
                            <div>
                                <img src="../new_img/safe.jpg" alt="Safe Banking" /></div>
                                
                                 <div>
                                 <a target="_blank" href="http://obcindia.co.in/obcnew/upload/news/New_Microsoft_Office_2013_(2).pdf">
                                <img src="../new_img/obc_card_img.jpg" alt="OBC Card" />
                                </a>
                                </div>
                                
                                
                        </div>
                        
                        
                        
                        
                    </div>
                    <!-- column1 end -->
                    <div style="width: 760px; position: relative; float: right;">
                        <div class="mid_center">
                            <div id="column2" style="display: none;">
                                <div class="column loan">
                                    <dl>
                                        <dt>Loan</dt>
                                        <dd>
                                            <p>
                                                <span id="ctl00_lbl_loan"><a href='inner.aspx?status=2&amp;menu_id=38'>Housing Loan</a>,&nbsp;<a href='inner.aspx?status=2&amp;menu_id=39'>Car/ Vehicle Loan</a>,&nbsp;<a href='inner.aspx?status=2&amp;menu_id=41'> Personal Loan</a>,&nbsp;<a href='inner.aspx?status=2&amp;menu_id=40'>Education Loan</a>,&nbsp;<a href='loan_des.aspx?menu_id=5'>Advances to Minority Communities - As per SACHAR committee</a>,&nbsp;<a href='loan_des.aspx?menu_id=6'>List of Beneficiaries under Agriculture Debt Waiver and Debt Relief Scheme - 2008</a></span>
                                            </p>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="column deposit">
                                    <dl>
                                        <dt>Deposit</dt>
                                        <dd>
                                            <p>
                                                <span id="ctl00_lbl_deposit"><a title='Saving Accounts' href='inner.aspx?status=2&amp;menu_id=29'>Saving Accounts</a>,&nbsp;<a title='Current Accounts' href='inner.aspx?status=2&amp;menu_id=30'>Current Accounts</a>,&nbsp;<a title='Term Deposit' href='inner.aspx?status=2&amp;menu_id=31'>Term Deposit</a>,&nbsp;<a title='Tax Saving Term Deposit Flexi Fixed Deposit' href='inner.aspx?status=2&amp;menu_id=33'>Tax Saving Term Deposit Flexi Fixed Deposit</a>,&nbsp;<a title='Variable Progressive Deposit' href='under.htm'>Variable Progressive Deposit</a></span>
                                            </p>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="column technology">
                                    <dl>
                                        <dt>Technology</dt>
                                        <dd>
                                            <p>
                                                <span id="ctl00_tech_data"><a href='technology_des.aspx?menu_id=1'>IT Initiatives Taken by The Bank</a>,&nbsp;<a href='technology_des.aspx?menu_id=9'>Automated Teller Machine</a>,&nbsp;<a href='technology_des.aspx?menu_id=4'>International Debit Card</a>,&nbsp;<a href='technology_des.aspx?menu_id=5'>SMS Banking</a>,&nbsp;<a href='technology_des.aspx?menu_id=8'>Mobile Banking</a></span></p>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="column">
                                    <dl>
                                        <dt>Other Links</dt>
                                        <dd>
                                            <div id="ctl00_show_data">
                                            <ol><li><a href="http://www.irctc.co.in">IRCTC for Railway Reservation</a></li>
<li><a href="http://rbi.org.in/home.aspx">Reserve Bank of India</a></li>
<li><a href="http://iibf.org.in">Indian Institute of Banking &amp; Finance</a></li></ol></div>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <div style="text-align: left; padding-bottom: 10px; font-size: 12px">
                              <!--  <a class="blk1" target="_blank" href="../upload/news/Annexure_to_Cir_Closure_of_Dormant_accounts.pdf">
                                    Public Notice for closure of In Operative Zero Balance Accounts<img src="new2.gif"
                                        alt="New" /></a><br />-->
                               
                               
                            
                                
                              
                            
                             <!--    <a class="blk1" target="_blank" href="../upload/news/obc_Credit_card_14_dec_2011.pdf">
                                    Oriental Bank of Commerce-SBI co-branded credit card
                                    <img src="new2.gif" alt="New" /></a>-->
                            </div>

                            <script type="text/javascript">
                            var i = 1;



function color() {



//alert(1);



if (i == 1) {



$('.blk1').css("color", "green");



i += 1;



return;



}



if (i == 2) {



$('.blk1').css("color", "black");



i += 1;



return;



}



if (i == 3) {



$('.blk1').css("color", "blue");



i += 1;



return;



}



if (i == 4) {



$('.blk1').css("color", "green");



i = 1;



return;



}



}



setInterval(color, 400);
                            </script>

                            <div class="head_txt">
                                Different people. Different desires.</div>
                            <div style="text-align: center;">
                                <img src="../new_img/mid.jpg" alt="Mid Image" /></div>
                            
                            <div class="head_txt" style="text-align: right; padding-bottom: 10px;">
                                One Bank!
                            <div style="text-align: left; color: #008c44;">
                                <a href="/obcnew/site/userRegistration.aspx" class="blk1" target="_self"><span style="font-size:15px">May we reach you</span></a></div></div>
                            
                            <div>
                                <img style="float: left; padding-right: 5px;" alt="News Image" src="../new_img/news.png" />
                                <div style="padding-top: 0px;">
                                    <div style="color: #008c44;">
                                        What&#39;s New</div>
                                    <div class="bot_lnk">
                                        <iframe width="250" scrolling="no" height="85" frameborder="0" name="if2" src="obc1.asp"
                                            title="Whats New" longdesc="obc.asp" id="ctl00_Iframe1">
                                            <p>
                                                Your browser does not support iframes.</p>
                                        </iframe>
                                    </div>
                                </div>
                            </div>
                            <div class="column braches">
                                <div>
                                    <a class="map" href="Map_Based_locator.aspx">
                                        <img alt="Indian Map" src="images/map_ptc.PNG" /></a>
                                    <dl>
                                        <dt>View Branches</dt>
                                        <dd>
                                            <span id="ctl00_Label2">Jalandhar, Bhopal, Dehradun, Kolkata, Ghaziabad, Jaipur, Lucknow, Karnal, Chennai, Rohtak, Sriganganagar, Pune, Bangalore, Patna, etc.</span>
                                            
                                            <br />
                                            <div class="map_view">
                                                <span class="headings"><a href="Map_Based_locator.aspx" class="headings">Click On Map
                                                    To View Branches</a> »</span></div>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                        <!-- MID end -->
                        <div class="right_bar">
                          
    </script>

</body>
</html>


