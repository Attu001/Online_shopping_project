<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>



<%
	String email=session.getAttribute("email").toString();
	String city=request.getParameter("city");
	String address=request.getParameter("address");

	String state=request.getParameter("state");
	String country=request.getParameter("country");
	try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from cart where email='"+email+"'");
		int check=0;
		while(rs.next()){
				Statement st2=con.createStatement();
				st2.executeUpdate("update users set address='"+address+"',city='"+city+"',country='"+country+"',state='"+state+"' where email='"+email+"'");
				check=1;
			
			
		}
		if(check==1)
		{
			response.sendRedirect("addChangeAddress.jsp?msg=done");
		}
		
	}catch(Exception e){
		System.out.println(e);
		response.sendRedirect("addChangeAddress.jsp?msg=wrong");

	}



%>