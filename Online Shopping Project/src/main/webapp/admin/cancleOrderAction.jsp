
<%@page import="org.apache.tomcat.jdbc.pool.interceptor.AbstractCreateStatementInterceptor"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>


<%
		String id=request.getParameter("id");
		String email=request.getParameter("email");
		String status="cancle";
		try{
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not null");
			response.sendRedirect("ordersReceived.jsp?msg=cancled");
		}catch(Exception e){
			System.out.println(e);
			response.sendRedirect("ordersReceived.jsp?msg=wrong");
		
		}



%>