<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="CREATE TABLE users (name VARCHAR(100),email VARCHAR(100) PRIMARY KEY,mobilenumber BIGINT(20),SecurityQuestion VARCHAR(200),Answer VARCHAR(200),password VARCHAR(100),address VARCHAR(300),city VARCHAR(100),state VARCHAR(200),country VARCHAR(100))";
	String q2="create table product(Id int,name varchar(100),category varchar(200),price int,status varchar(10))";
	String q3="create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobilenumber bigint,orderDate varchar(100),delivaryDate varchar(100),paymentMethod varchar(200),transactionId varchar(100),status varchar(10))";
	String q4="create table message(id int auto_increment,email varchar(200) ,message varchar(100),subject varchar(30),body varchar(100),primary key(id))";

	System.out.println(q1);
	//st.execute(q1);
	System.out.println(q2);
	//st.execute(q2);
	System.out.println(q3);
	//st.execute(q3);
	System.out.println(q4);
	st.execute(q4);

	System.out.println("table created");
	con.close();

}
catch(Exception e){
	System.out.println(e);
}

%>