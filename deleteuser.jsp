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
		<div class="w3-content w3-round-large" id="admin" >
			<%@page import="java.sql.*,javax.sql.*" %>
	<%
	try{
	String username=request.getParameter("uname");
	Statement st=connection.createStatement();
	ResultSet rs;
	int i=st.executeUpdate("delete from farmer where uname='"+username+"'");
	if(i>0)
	{
		%><h4><center><b style="color: rgb(160, 154, 154);">User deleted succesfully.</b></center></h4><%
	}
	else{
		%><h4><center><b style="color: rgb(160, 154, 154);">Invalid username.Try again.</b></center></h4><%
	}
	}
	catch(Exception e)
	{
		%><h4><b style="color:white;">Invalid username.Try again.</b></h4><%
	}
	%>
	<a href="admin.jsp" class="w3-button w3-round-xxlarge w3-block w3-black" >Goto admin page</a>
	</div>
	</div>
</body>
</html>