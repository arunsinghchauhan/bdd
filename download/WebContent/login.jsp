
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<style type="text/css">
<!--
.style8 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 12px;
}

.style9 {
	font-family: Arial, Helvetica, sans-serif
}

body,td,th {
	color: #000000;
}

.style12 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}

.style13 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-weight: bold;
	color: #FFFFFF;
}
-->
</style>
</head>
<body>
<div class="wrap"><%@ include file="headertemp.jsp"%>
</div>
<div class="tab_bg">
<div class="ltabs"></div>
<div class="tabs">
<div class="tab" style="width: 276px;"><img
	src="${pageContext.request.contextPath}/images/img03.jpg" alt=""
	border="0" class="tab_icon" />
<p class="tab_text"><a
	href="http://all-free-download.com/free-website-templates/">Adventure
Program </a><br />
Hello Sir/Mam!</p>
</div>
</div>




<div class="clear"></div>
</div>

<div class="center_content">

<form action="processData.jsp" method="post">

<table width="546" border="1"
	style="border: 2px solid; border-radius: 10px;">
	<tr>
		<td align="left">Userid:</td>
		<td align="left"><input type="text" name="userid" size="30"
			maxlength="120" /></td>
	</tr>

	<tr>
		<td align="left">First Name:</td>
		<td align="left"><input type="text" name="firstName"></input></td>
	</tr>
	<tr>
		<td align="left">Middle Name:</td>
		<td align="left"><input type="text" name="middleName" size="30"
			maxlength="120" /></td>
	</tr>
	<tr>
		<td align="left">Last Name:</td>
		<td align="left"><input type="text" name="lastName" size="30"
			maxlength="120" /></td>
	</tr>
	<tr>
		<td align="left">Dob:</td>
		<td align="left"><!--  <input type="text" name="dob" size="30" maxlength="120"/> -->
		<input type="text" id="datepicker" name="dob" size="30"
			maxlength="120" /></td>
	</tr>
	<tr>
		<td align="left">Doa:</td>
		<td align="left"><input type="text" name="doa" size="30"
			maxlength="120" /></td>
	</tr>

	<tr>
		<td align="left">E Mail:</td>
		<td align="left"><input type="text" name="email" size="50"
			maxlength="120" /></td>
	</tr>
	<tr>
		<td align="left">Phone:</td>
		<td align="left"><input type="text" name="phone" size="30"
			maxlength="120" /></td>
	</tr>
	<tr>
		<td align="left">Address</td>
		<td align="left"><textarea rows="2" cols="30" name="address"></textarea></td>
	</tr>
	<tr>
		<td align="left">Father Name:</td>
		<td align="left"><input type="text" name="fatherName" size="30"
			maxlength="120" /></td>
	</tr>


	<tr>
		<td align="left">Pin:</td>
		<td align="left"><input type="text" name="pin" size="30"
			maxlength="120" /></td>
	</tr>

	<tr>
		<td align="left">Select Country:</td>
		<td align="left"><select name="country">

			<option value="4">Afghanistan</option>
			<option value="12">Algeria</option>
			<option value="20">Andorra</option>
			<option value="660">Anguilla</option>
			<option value="28">Antigua and Barbuda</option>
			<option value="32">Argentina</option>
			<option value="51">Armenia</option>
			<option value="533">Aruba</option>
			<option value="36">Australia</option>
			<option value="40">Austria</option>
			<option value="44">Bahamas</option>
			<option value="48">Bahrain</option>
			<option value="52">Barbados</option>
			<option value="56">Belgium</option>
			<option value="84">Belize</option>
			<option value="60">Bermuda</option>
			<option value="64">Bhutan</option>
			<option value="68">Bolivia</option>
			<option value="72">Botswana</option>
			<option value="76">Brazil</option>
			<option value="100">Bulgaria</option>
			<option value="854">Burkina Faso</option>
			<option value="116">Cambodia</option>
			<option value="120">Cameroon</option>
			<option value="124">Canada</option>
			<option value="136">Cayman Islands</option>
			<option value="148">Chad</option>
			<option value="152">Chile</option>
			<option value="156">China</option>
			<option value="170">Colombia</option>
			<option value="178">Congo</option>
			<option value="184">Cook Islands</option>
			<option value="188">Costa Rica</option>
			<option value="384">Côte d&#39;Ivoire</option>
			<option value="191">Croatia</option>
			<option value="192">Cuba</option>
			<option value="196">Cyprus</option>
			<option value="203">Czech Republic</option>
			<option value="208">Denmark</option>
			<option value="212">Dominica</option>
			<option value="214">Dominican Republic</option>
			<option value="218">Ecuador</option>
			<option value="818">Egypt</option>
			<option value="222">El Salvador</option>
			<option value="232">Eritrea</option>
			<option value="233">Estonia</option>
			<option value="238">Falkland Islands (Malvinas)</option>
			<option value="234">Faroe Islands</option>
			<option value="242">Fiji</option>
			<option value="246">Finland</option>
			<option value="250">France</option>
			<option value="254">French Guiana</option>
			<option value="258">French Polynesia</option>
			<option value="266">Gabon</option>
			<option value="270">Gambia</option>
			<option value="268">Georgia</option>
			<option value="276">Germany</option>
			<option value="288">Ghana</option>
			<option value="300">Greece</option>
			<option value="308">Grenada</option>
			<option value="312">Guadeloupe</option>
			<option value="320">Guatemala</option>
			<option value="324">Guinea</option>
			<option value="624">Guinea-Bissau</option>
			<option value="328">Guyana</option>
			<option value="332">Haiti</option>
			<option value="340">Honduras</option>
			<option value="344">Hong Kong</option>
			<option value="348">Hungary</option>
			<option value="352">Iceland</option>
			<option value="356" selected="selected">India</option>
			<option value="360">Indonesia</option>
			<option value="372">Ireland</option>
			<option value="376">Israel</option>
			<option value="380">Italy</option>
			<option value="388">Jamaica</option>
			<option value="392">Japan</option>
			<option value="400">Jordan</option>
			<option value="404">Kenya</option>
			<option value="414">Kuwait</option>
			<option value="418">Lao People&#39;s Democratic Republic</option>
			<option value="428">Latvia</option>
			<option value="422">Lebanon</option>
			<option value="430">Liberia</option>
			<option value="434">Libyan Arab Jamahiriya</option>
			<option value="438">Liechtenstein</option>
			<option value="440">Lithuania</option>
			<option value="442">Luxembourg</option>
			<option value="450">Madagascar</option>
			<option value="454">Malawi</option>
			<option value="458">Malaysia</option>
			<option value="466">Mali</option>
			<option value="470">Malta</option>
			<option value="474">Martinique</option>
			<option value="484">Mexico</option>
			<option value="492">Monaco</option>
			<option value="504">Morocco</option>
			<option value="508">Mozambique</option>
			<option value="516">Namibia</option>
			<option value="524">Nepal</option>
			<option value="528">Netherlands</option>
			<option value="530">Netherlands Antilles</option>
			<option value="554">New Zealand</option>
			<option value="558">Nicaragua</option>
			<option value="562">Niger</option>
			<option value="566">Nigeria</option>
			<option value="574">Norfolk Island</option>
			<option value="578">Norway</option>
			<option value="512">Oman</option>
			<option value="586">Pakistan</option>
			<option value="591">Panama</option>
			<option value="598">Papua New Guinea</option>
			<option value="600">Paraguay</option>
			<option value="604">Peru</option>
			<option value="616">Poland</option>
			<option value="620">Portugal</option>
			<option value="630">Puerto Rico</option>
			<option value="634">Qatar</option>
			<option value="642">Romania</option>
			<option value="643">Russian Federation</option>
			<option value="646">Rwanda</option>
			<option value="659">Saint Kitts and Nevis</option>
			<option value="662">Saint Lucia</option>
			<option value="663">Saint Martin (French part)</option>
			<option value="666">Saint Pierre and Miquelon</option>
			<option value="674">San Marino</option>
			<option value="682">Saudi Arabia</option>
			<option value="686">Senegal</option>
			<option value="702">Singapore</option>
			<option value="703">Slovakia</option>
			<option value="705">Slovenia</option>
			<option value="706">Somalia</option>
			<option value="710">South Africa</option>
			<option value="724">Spain</option>
			<option value="144">Sri Lanka</option>
			<option value="736">Sudan</option>
			<option value="740">Suriname</option>
			<option value="748">Swaziland</option>
			<option value="752">Sweden</option>
			<option value="756">Switzerland</option>
			<option value="760">Syrian Arab Republic</option>
			<option value="158">Taiwan</option>
			<option value="834">Tanzania, United Republic of</option>
			<option value="764">Thailand</option>
			<option value="626">Timor-Leste</option>
			<option value="768">Togo</option>
			<option value="788">Tunisia</option>
			<option value="792">Turkey</option>
			<option value="796">Turks and Caicos Islands</option>
			<option value="800">Uganda</option>
			<option value="804">Ukraine</option>
			<option value="784">United Arab Emirates</option>
			<option value="826">United Kingdom</option>
			<option value="840">United States</option>
			<option value="858">Uruguay</option>
			<option value="860">Uzbekistan</option>
			<option value="862">Venezuela, Bolivarian Republic of</option>
			<option value="704">Viet Nam</option>
			<option value="92">Virgin Islands, British</option>
			<option value="850">Virgin Islands, U.S.</option>
			<option value="887">Yemen</option>
			<option value="894">Zambia</option>
			<option value="716">Zimbabwe</option>
		</select></td>
	</tr>

</table>
<p><input type="submit" value="Submit" /> <input type="reset"
	value="Reset" name="B2" /></p>
</form>
<%@ include file="footertemp.jsp"%>
</div>
</body>
</html>