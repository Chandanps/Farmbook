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
		String uuname=request.getParameter("uuname");
		//session.putValue("uuname",uuname);
		String upassword=request.getParameter("upassword");
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery("select * from farmer where uname='"+uuname+"'");
		if(rs.next())
		{
			if(rs.getString(8).equals("admin123"))
			{
				out.println("Welcome "+uuname+". . . Loading . . .");
				//waits for 3seconds and then loads info.html
				response.setHeader("Refresh","2;url=admin.jsp");
				//response.sendRedirect("info.html");
			}
			else if(rs.getString(8).equals(upassword))
			{
				out.println("Welcome "+uuname+". . . Loading . . .");
				//waits for 3seconds and then loads info.html
				response.setHeader("Refresh","3;url=farmers.jsp");
				//response.sendRedirect("info.html");
			}
			else
			{
				out.println("invalid password!Try again. . . Going back to HOME");
				response.setHeader("Refresh","3;url=index.html");
			}
		}
		else
		{
			out.println("invalid username!Try again. . . Going back to HOME");
			response.setHeader("Refresh","3;url=index.html");
		}
	%>
	</p>
	</div>
</body>
</html>