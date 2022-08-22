<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page import="java.util.*" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Ticket</title>

<link rel="stylesheet" href="Styles/ticketstyle.css">

</head>
<body>
<h1>Flyaway</h1>
<div class="containerti" align="center">
		
		<h4>E-Ticket</h4>
		 
			
	
	<% 	
	String fldata = session.getAttribute("flightdata").toString();
	String[] strArray = fldata.split(" ");
	
	ArrayList<String> flight = new ArrayList<String>();
	
	for (int i = 0; i< strArray.length; i++){  
		flight.add(strArray[i]);
		}  
	
	%>
	<h3 id="main">
	Name: <c:out value="${userdetails.pname }"></c:out>
	<br>
	Gender: <c:out value="${userdetails.pgender }"></c:out>
	<br>
	Mobile No: <c:out value="${userdetails.pnumber }"></c:out>
	<br>
	Email: <c:out value="${userdetails.pemail }"></c:out>
	<br>
	Age: <c:out value="${userdetails.page }"></c:out>
	<br>
	<br>
	Flight : <c:out value="<%=flight.get(0)%>"></c:out>
	<br>
	Start time : <c:out value="<%=flight.get(2)%>"></c:out>
	<br>
	Reach Time : <c:out value="<%=flight.get(3)%>"></c:out>
	<br>
	From : <%= session.getAttribute("fromm") %> 
	<br>
	To : <%= session.getAttribute("too") %>
	<br>
	Date Of Travelling : <%= session.getAttribute("date") %>
	<br>
	Amount Paid : <c:out value="<%=flight.get(1)%>"></c:out>
	<br>
	

	</h3>
	

	<br>
		<br>
		<a id="btn" href="routes.jsp">New Booking</a>
	</div>
	
</body>
</html>