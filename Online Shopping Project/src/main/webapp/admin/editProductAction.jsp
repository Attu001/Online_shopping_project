<%@page import="org.apache.catalina.startup.ClassLoaderFactory.Repository"%>
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%

String id=request.getParameter("id");
String name=request.getParameter("name");

String category=request.getParameter("category");

String active=request.getParameter("active");

String price=request.getParameter("price");


	try{
		
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		st.executeUpdate("update product set name='"+name+"',category='"+category+"', status='"+active+"', price='"+price+"' where id='"+id+"'");
		if(active.equals("No")){
			st.executeUpdate("delete from cart where product_id='"+id+"' and address is Null");	
		}
		response.sendRedirect("allProductEditProduct.jsp?msg=done");
	}
	catch(Exception e)
	{
		response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
		System.out.println(e);
	}


%>