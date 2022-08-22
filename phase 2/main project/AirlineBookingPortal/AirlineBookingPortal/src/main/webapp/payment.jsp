<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Styles/payment.css">
<title>Payment Gateway</title>
</head>
<body >
<br>
<!--  <a href=HomePage.jsp style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">FlyAway</a>-->
<br><br>
    
    <% 	
	String fldata = session.getAttribute("flightdata").toString();
	String[] strArray = fldata.split(" ");
	
	ArrayList<String> flight = new ArrayList<String>();
	
	for (int i = 0; i< strArray.length; i++){  
		flight.add(strArray[i]);
		}  
	
	%>
    
    <form align="center" action="paymentsuccfull.jsp" method="post">
    <div class="containerp">
        
        <div class="form">
            <h4>Payment Gateway</h4>
            
            <p> <input id="pname" type="text" name="pname" required placeholder="Full Name"> </p>

            <p> <input id="pcard" type="text" name="pcard" id="" placeholder="Card Number" required> </p>
            
            <p> <input id="pcvv" type="text" name="pcvv" id="" placeholder="CVV" required> </p>
            <p> Amount : <c:out value="<%=flight.get(1)%>"></c:out>    </p>
            
            
       	<input id="btn" type="submit" value="PAY">
			
           

        </div>

    </div>
    

</form>
</body>
</html>