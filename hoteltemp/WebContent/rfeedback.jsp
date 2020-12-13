<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#593E1A">
<div id="header"><img
	src="<%=request.getContextPath() %>/images/header-bg-small.jpg" width="1300"
	height="200"></img>
	<br><marquee   align="center"  behavior="alternate"
			style="COLOR: #FF5050; font-family:Verdana; font-weight:bold"  scrollDelay=100  width=1300
			bgColor=#FFFFFF height=16>Welcome To Feedback Column </marquee></font> 
	</div>
	<a name='new-answer'></a>
						<form action="Fdpage" method="post"  class="post-form">
							<input type="hidden" id="post-id" value="17973970" />
							<h2 class="space">Your Feedback</h2>
							


<div id="post-editor" class="post-editor">

    <div style="position: relative;">     
        <div class="wmd-container">
            <div id="wmd-button-bar" class="wmd-button-bar"></div>
            <textarea id="wmd-input" class="wmd-input" name="feedback" cols="58" rows="10" tabindex="72" data-min-length=""></textarea>
        </div>
    </div>

    


  
</div>
					
									<input id="submit-button" type="submit" value="Post Your Feedback" tabindex="110">
									<a href="testimonials1.jsp" class="discard-answer dno">discard</a>

<p class="privacy-policy-agreement">
By posting your feedback, you agree to the <a href='http://stackexchange.com/legal/privacy-policy' target='_blank'>privacy policy</a> and <a href='http://stackexchange.com/legal/terms-of-service' target='_blank'>terms of service</a>.</p>
<input type="hidden" name="legalLinksShown" value="1" />								</div>
						</form>



						
							</form>


</body>
</html>