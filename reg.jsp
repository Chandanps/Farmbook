<%@ include file="connect.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<body>
<div class="w3-container">
	<h1><a href="index.html"  id="pagename">farmbook.</a></h1>
	<p id="zzz">
	<%@page import="java.sql.*,javax.sql.*" %>
	<%
		String name=request.getParameter("name");
		String adrnum=request.getParameter("adrnum");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String place=request.getParameter("place");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		String uname=request.getParameter("uname");
		String password=request.getParameter("password");
		
		Statement st=connection.createStatement();
		ResultSet rs;
		int i=st.executeUpdate("insert into farmer values('"+name+"','"+adrnum+"','"+gender+"','"+dob+"','"+place+"','"+address+"','"+uname+"','"+password+"','"+phone+"')");
		out.println("Registered!");
	%>
	<br><a href="index.html" class="w3-button w3-round-xxlarge w3-block w3-black">Home</a>
	</p>
	</div>
</body>
</html>