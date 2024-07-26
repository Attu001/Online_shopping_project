<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");

String email=request.getParameter("email");
String securityquestion=request.getParameter("securityquestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String state="";
String city="";
String country="";

try{
	Connection con =ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into users value(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,mobilenumber);
	ps.setString(4,securityquestion);
	ps.setString(5,answer);
	ps.setString(6,password);
	ps.setString(7,city);
	ps.setString(8,state);
	ps.setString(9,country);
	ps.setString(10,address);
	ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");

	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
	
}






%>