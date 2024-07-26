<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>

<% String msg=request.getParameter("msg");
	if("added".equals(msg)){
	

%>

<h3 class="alert">Product added successfully!</h3>
<%} %>

<% String msg2=request.getParameter("msg");
	if("exist".equals(msg2)){
	

%>
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>

<% String msg3=request.getParameter("msg");
	if("invalid".equals(msg3)){
	

%>
<h3 class="alert">Something Went Wrong! Try Again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart<i class='fa fa-shopping-cart'></i></th>
          </tr>
        </thead>
        <tbody>

	<% 
		try{
		
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from product where status='yes'");
		while(rs.next()){	
	%>
	
          <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %><i class="fa fa-inr"></i> </i></td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
		<%
		
		}
		}catch(Exception e){
			System.out.println(e);
		}
		%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>