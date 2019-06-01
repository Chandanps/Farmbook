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
	<%
		String azone=request.getParameter("azone");
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery("select id,soil from area where azone='"+azone+"'");
		rs.next();
		String id=rs.getString(1);
		String soil=rs.getString(2);
	%>
	<h5 style="color:white;">Soil type : <%=soil %></h5>
	<%ResultSet rs1=st.executeQuery("select crop,ratio,fertRec from ratios where areaId='"+id+"'"); 
	%><table>
	<tr><th>Crop name</th>
		<th>N:P2O6:K2O ratio</th>
		<th>Fertilization recommendation(N-P2O5-K2O kg/ha)</th>
		</tr>
	<% 
	while(rs1.next())
	{
		
		%><tr>
		<th><label><%= rs1.getString(1)%></label></th>
		<th><label><%= rs1.getString(2)%></label></th>
		<th><label><%= rs1.getString(3)%></label></th>
		</tr>
	<%	
	}
	%></table><%
	%>
</body>
</html>