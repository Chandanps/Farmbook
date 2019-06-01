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
	
		<div class="w3-content w3-round-large" id="admin">
		<form action="deleteuser.jsp" method="post" >
				<input type="text" name="uname" placeholder="unique username of the user" class="w3-input w3-third w3-round-xxlarge" required /><br><br>
				<input type="submit" value="delete user" class="w3-button w3-round-xxlarge w3-third w3-block w3-black"/>
			</form><br><br>
			<form action="f.jsp" method="post" target="frame1">
				<input type="submit" value="view farmer table" class="w3-button w3-round-xxlarge w3-block w3-black"/>
			</form>
			<form action="c.jsp" method="post" target="frame1">
				<input type="submit" value="view crop table" class="w3-button w3-round-xxlarge w3-block w3-black"/>
			</form>
			<form action="a.jsp" method="post" target="frame1">
				<input type="submit" value="view area table" class="w3-button w3-round-xxlarge w3-block w3-black"/>
			</form>
			<form action="o.jsp" method="post" target="frame1">
				<input type="submit" value="view orders table" class="w3-button w3-round-xxlarge w3-block w3-black"/>
			</form>
			<form action="r.jsp" method="post" target="frame1">
				<input type="submit" value="view ratios table" class="w3-button w3-round-xxlarge w3-block w3-black"/>
			</form>
			<form action="d.jsp" method="post" target="frame1">
				<input type="submit" value="view deleted users table" class="w3-button w3-round-xxlarge w3-block w3-black"/>
			</form>
		
			<iframe name="frame1" height=100% width=100%></iframe><br>
			</div>
	</div>
</body>
</html>