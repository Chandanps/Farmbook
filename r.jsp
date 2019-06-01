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
	try{
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery("select * from ratios");
		%><table>
		<tr><th>areaID</th>
			<th>crop name</th>
			<th>N:P2O6:K2O ratio</th>
			<th>Fertilization recommendation(N-P2O5-K2O kg/ha)</th>
			</tr>
		<% 
		while(rs.next())
		{
			
			%><tr>
			<th><label><%= rs.getString(1)%></label></th>
			<th><label><%= rs.getString(2)%></label></th>
			<th><label><%= rs.getString(3)%></label></th>
			<th><label><%= rs.getString(4)%></label></th>
			</tr>
		<%	
		}
		%></table><%
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
</body>
</html>