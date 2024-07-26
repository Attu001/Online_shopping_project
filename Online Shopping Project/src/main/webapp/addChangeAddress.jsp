<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>

<%@include file="footer.jsp" %>
	<%@page errorPage="error.jsp" %>
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
<h3 class="alert">Address Successfully Updated !</h3>
<%	
	}
	
%>

<%
if("wrong".equals(msg)){
%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%} %>

<form action="addChangeAddressAction.jsp" method="post">
	<%
	try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from users where email='"+email+"'");
		while(rs.next()){
	%>
	

<h3>Enter Address</h3>
<input type="text" name="address" placeholder="Enter address" class="input-style" value="<%=rs.getString(7)%>"> 
 <hr>
 <h3>Enter city</h3>
<input type="text" name="city" placeholder="Enter address" class="input-style" value="<%=rs.getString(8)%>"> 
<hr>
<h3>Enter State</h3>
<input type="text" name="state" placeholder="Enter address" class="input-style" value="<%=rs.getString(9)%>">
<hr>
<h3>Enter country</h3>
<input type="text" name="country" placeholder="Enter country" class="input-style" value="<%=rs.getString(10)%>"> 

	<%	
		}}catch(Exception e){
			System.out.println(e);
		}
	%>
<hr>
 <button type="submit" class="button">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>