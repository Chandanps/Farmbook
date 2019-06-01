<%@ include file="connect.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
        <meta charset="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="w3.css">
        <link rel="stylesheet" href="bs.css">
         <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">  -->
        <link rel="stylesheet" href="styles.css">
<title>Insert title here</title>
</head>
<body id="zz">
	<%String cropname=request.getParameter("cropname");
	String quantity=request.getParameter("quantity");
	float q=Float.valueOf(quantity);
	%><%
	Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery("select ourprice from crop where name='"+cropname+"'");
		rs.next();	
	float price= rs.getFloat(1);
	float amount=price*q;
	
	%>
	<h5>Rs.<%=amount %></h5> 
	
</body>
</html>