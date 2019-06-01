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
	String username=request.getParameter("username");
	String cropname=request.getParameter("ccropname");
	String quantity=request.getParameter("qquantity");
	float q=Float.valueOf(quantity);
	%><%
	Statement st=connection.createStatement();
	ResultSet rs1=st.executeQuery("select max(ordno) from orders");
	rs1.next();
	int j=rs1.getInt(1);
	j++;
	ResultSet rs=st.executeQuery("select ourprice from crop where name='"+cropname+"'");
	rs.next();	
	float price= rs.getFloat(1);
	float amount=price*q;
	int i=st.executeUpdate("insert into orders values('"+j+"','"+cropname+"','"+quantity+"','"+amount+"','"+username+"')");
	if(i>0)
	{
		out.println("Your order number is:"+j);
		out.println("order placed!We'll soon contact you through phone first.And then we'll be at your door step ,in order to pick your crops ,and pay you the cash there itself.");
		%>
		<a href="farmers.jsp" class="w3-button w3-round-xxlarge w3-block w3-black" >back</a>
		<%
	}
	else{
		out.println("invalid credentials.Check your values in the form again.");
		response.setHeader("Refresh","3;url=farmers.jsp");
	}
	%>
	</p>
	</div>
</body>
</html>