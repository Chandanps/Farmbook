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
	String ordrnum=request.getParameter("ordnum");
	%><%
	Statement st=connection.createStatement();
	int i=st.executeUpdate("delete from orders where ordno='"+ordrnum+"'");
	if(i>0)
	{
		out.println("order cancelled.");
		%>
		<a href="farmers.jsp" class="w3-button w3-round-xxlarge w3-block w3-black" >back</a>
		<%
	}
	else{
		out.println("invalid order number.Enter again.");
		response.setHeader("Refresh","3;url=farmers.jsp");
	}
	%>
	</p>
	</div>
</body>
</html>