
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>

<%@include file="footer.jsp" %>
	<%@page errorPage="error.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>

<%
	String msg=request.getParameter("msg");
		
	if("nothing".equals(msg)){
	
%>

<h3 class="alert">Something Went Wrong!!</h3>
<%} %>


<%
	
		
	if("done".equals(msg)){
	
%>

<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<%
		
	if("wrong".equals(msg)){
	
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>


	
	<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Securtiy Question</h3>
  	<select class="input-style" name="securityQuestion" >
 <option value="What was your first car?">What was your first car?</option>
            <option value="what is yor first pet name?">what is yor first pet name?</option>
            <option value="what elementry scool did you attend?">what elementry scool did you attend?</option>
            <option value="what is the name of your town where you born?">what is the name of your town where you born?</option>
              	</select>
              	
 <hr>
 <h3>Enter Your New Answer</h3>
 <input type="text" class="input-style" name="newAnswer" placeholder="enter your answer" required="required">
 
<hr>
<h3>Enter Password (For Security)</h3>
<input type="password" class="input-style" name="password" placeholder="enter your Password" required="required">
<hr>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
 
 </form>
 
	
</body>
<br><br><br>
</html>