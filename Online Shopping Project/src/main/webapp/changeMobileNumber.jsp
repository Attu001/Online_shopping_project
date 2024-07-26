<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>

<%
	String msg=request.getParameter("msg");
		
	if("done".equals(msg)){	
	
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%}

	if("notexist".equals(msg)){

	
	%>

<h3 class="alert">Your Password is wrong!</h3>
<%} 
	if("nothing".equals(msg)){
	
%>

<h3 class="alert">Something went wrong!</h3>

<%} %>

<form action="changeMobileNumberAction.jsp"	 method="post" >
 <h3>Enter Your New Mobile Number</h3>
 <input type="number" name="newNumber" class="input-style" placeholder="Enter new Number" required>
 <hr>
<h3>Enter Password (For Security)</h3>
 <input type="password" name="password" class="input-style" placeholder="Enter password" required>

<hr>
 <button class="button" type="submit">Save</button><i class='far fa-arrow-alt-circle-right'></i>
</form>
</body>
<br><br><br>
</html>