<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/home-style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
  
  <%
  try{
	  
	  Connection con=ConnectionProvider.getCon();
	  Statement st=con.createStatement();
	  ResultSet rs=st.executeQuery("select * from users where email='"+email+"'");
	  while(rs.next())
	  {	
	  
	  
	  %>
  
    <!-- Content -->
    <div class="content" style="text-align:center;">
        <h3>Name:<%=rs.getString(1)%></h3>
        <hr>
        <h3>Email:<%=rs.getString(2)%></h3>
        <hr>
        <h3>Mobile Number:<%=rs.getString(3)%></h3>
        <hr>
        <h3>Security Question:<%=rs.getString(4)%></h3>
        <hr>
        <br><br><br>
    </div>
    
    <%
	  }}catch(Exception e){
		  System.out.println(e);
	  }
    
    %>
    <!-- Footer -->
    <%@include file="footer.jsp" %>
</body>
</html>
