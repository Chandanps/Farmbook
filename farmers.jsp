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
<body>
	<% Statement st=connection.createStatement();%>

	<div class="w3-row">
		 <h1><a href="index.html"  id="pagename">farmbook.</a></h1>
		 <%
	ResultSet rs2=st.executeQuery("select name from crop");
	%>
		 <div class="w3-container w3-round-large w3-third" style="background:rgba(63, 57, 57, 0.205);color:rgb(160, 154, 154);position: relative;top: 35px;left: 30px;right:30px;padding: 30px 30px;" >
		 <h3>Compare prices:</h3>
			Compare market price and our price for any crop.<br>
			<iframe name="frame2" height=100 width=100%></iframe><br>
			<form action="prices.jsp" method="post" target="frame2">
				Crop name<select name=cropname class="w3-input w3-round-xxlarge" required>
				<% while(rs2.next()){ %>
					<option value="<%= rs2.getString(1) %>" ><%= rs2.getString(1) %></option>
				<% } %>
				</select>
				<br><input type="submit" value="see prices" class="w3-button w3-round-xxlarge w3-block w3-black"/>
			</form>
		 </div>
		 <%
			ResultSet rs3=st.executeQuery("select azone from area");
			%>
		 <div class="w3-container w3-round-large w3-twothird" style="background:rgba(63, 57, 57, 0.205);color:rgb(160, 154, 154);position: relative;top: 35px;left: 30px;right:30px;padding: 30px 30px;">
		  	<h3>Know your area info</h3>
		  		Get to know your area info like soil types,crop that can be grown and their nutrient requirements by inputing your area name.<br>
		  		<iframe name="frame4" height=100 width=100%></iframe><br>
		  		<form action="area.jsp" method="post" target="frame4">
				Area:<select name=azone class="w3-input w3-round-xxlarge" required>
				<% while(rs3.next()){ %>
					<option value="<%= rs3.getString(1) %>" ><%= rs3.getString(1) %></option>
				<% } %>
				</select>
				<br><input type="submit" value="Go" class="w3-button w3-round-xxlarge w3-block w3-black"/>
			</form>
			</div>
		</div>
	<br>
	<%
	ResultSet rs=st.executeQuery("select name from crop");
	%>
	<div class="w3-container">
		<div class="w3-content w3-round-large w3-third" id="calculator">
			<h3>Amount calculator:</h3>
			You can now calculate the amount of money you'll earn from the crop.<br>
			Just choose the crop and the quantity and click the calculate button.<br><br>
			<iframe name="frame1" height=50 width=100%></iframe><br>
			<form action="submitted.jsp" method="post" target="frame1">
				Crop name<select name=cropname class="w3-input w3-round-xxlarge" required>
				<% while(rs.next()){ %>
					<option value="<%= rs.getString(1) %>" ><%= rs.getString(1) %></option>
				<% } %>
				</select>
				<br>Quantity(in Kg)<input name="quantity" type="number" class="w3-input w3-round-xxlarge" required/>
				<br><input type="submit" value="calculate" class="w3-button w3-round-xxlarge w3-block w3-black"/>
			</form>
		</div>
		<div class="w3-content w3-round-large w3-third" id="calculator">
			<h3>Place order:</h3>
			Place order and we will come and pick up your growth in order to deliver them to the market.
			We will pay your cash on spot using hard cash or paytm or netbanking,as you wish.Just fill up the following form
			and we'll be at your doorstep within 2days.<br>
			<form action="submitorder.jsp" method="post">
				<br>Unique Username
				<input type="text" name="username" class="w3-input w3-round-xxlarge" required>
				Crop name<select name=ccropname class="w3-input w3-round-xxlarge">
				<% ResultSet rs1=st.executeQuery("select name from crop");
					while(rs1.next()){ %>
					<option value="<%= rs1.getString(1) %>" ><%= rs1.getString(1) %></option>
				<% } %>
				</select>
				Quantity(in Kg)<input name="qquantity" type="number" class="w3-input w3-round-xxlarge" required/><br>
				<input type="submit" value="submit" class="w3-button w3-round-xxlarge w3-block w3-black"/><br>
			</form>
		</div>
		<div class="w3-content w3-round-large w3-third" id="calculator">
			<h3>Cancel order:</h3>
			Enter your order number in the form below in order to cancel you order.<br>
			<form action="cancelorder.jsp" method="post">
				<br>Order number
				<input type="number" name="ordnum" class="w3-input w3-round-xxlarge" required/>
				<input type="submit" value="submit" class="w3-button w3-round-xxlarge w3-block w3-black"/><br>
			</form>
		</div>
	</div>
	
</body>
</html>