<%@page import="java.sql.*" %>
<%@page import="project.ConnectionProvider" %>

<%
	String email=(String)session.getAttribute("email");
	String securityQuestion=request.getParameter("securityQuestion");
	String newAnswer=request.getParameter("newAnswer");
	String password=request.getParameter("password");
	
	
	try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
	int check=0;
	while(rs.next()){
		check=1;
		st.executeUpdate("update users set Answer='"+newAnswer+"',securityQuestion='"+securityQuestion+"' where email='"+email+"'");		
		response.sendRedirect("changeSecurityQuestion.jsp?msg=done");
	}
	if(check==0){
		response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");

	}
	
	}catch(Exception e){
		
		System.out.println(e);
		
		
		
	}
	
	

%>