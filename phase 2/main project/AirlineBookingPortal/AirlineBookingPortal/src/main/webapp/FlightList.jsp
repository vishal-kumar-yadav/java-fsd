<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
<link rel="stylesheet" href="Styles/flightlist.css">
</head>
<body>
<div align = "center">
	
<h3>Available Flights</h3>
<div id="datee">
For date : ${date}
</div>



<%
	@SuppressWarnings("unchecked")
	List<String[]> flights=(List<String[]>)session.getAttribute("flights");
%>

<table id="head" border=1 cellspacing=8 cellpadding=10>

<tr>
			<th>Flight Name</th><th>Price</th><th>Start Time</th><th>End Time</th><th>Booking</th>
		
</tr>
<%
	for(String[] flight:flights){
%>


<table id="head2" border=0 cellspacing=0 cellpadding=25>
<tr>

<form method="get" action="Userdetails.jsp" enctype=text/plain>

<td><%=flight[0]%></td>
<td><%=flight[1]%></td>
<td><%=flight[2]%></td>
<td><%=flight[3]%> &nbsp; &nbsp; &nbsp; &nbsp;

<INPUT id="submit" TYPE="submit" name="command" value="<%=flight[0]%> <%=flight[1]%> <%=flight[2]%> <%=flight[3]%>"/>



</tr>
</table>

</form>
</table>
	


<%} %>

</div>
</body>
</html>