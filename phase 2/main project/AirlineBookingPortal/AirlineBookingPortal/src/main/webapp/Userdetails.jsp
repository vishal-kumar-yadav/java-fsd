<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">

<link rel="stylesheet" href="challenge1.css">
<meta charset="ISO-8859-1">
<title>User Details</title>
</head>
<body >
<br>
<!--  <a href=HomePage.jsp style="color:black;text-decoration:none ;font-size:35px;font-weight:bold;">FlyAway</a>-->
<br><br>
    
    <form action="UserdetailsController" method="post">
    <div class="container">
        
        <div class="image">
            <img src="img/Screenshot (6).png" alt="image not found" class="img">
        </div>
        
        
        <div class="form">
            <h1 align="justify">Welcome to FlyAway</h1>
            
            <p> <input type="text" name="pname" required placeholder="Full Name"> </p>
            
            <fieldset>
            
            <p>
              <input type="radio" name="pgender" value="male"> Male
              <input type="radio" name="pgender" value="female"> Female
            </p>
            </fieldset>

            <p> <input type="number" name="pnumber" id="" placeholder="Mobile Number" required> </p>
            
            <p> <input type="email" name="pemail" id="" placeholder="Email" required> </p>
            
            <p><input type="number" name="page" id="" placeholder="Age" required></p>
            
       	<input type="submit" value="Save"></a>
       	
       	<%
		String sCommand = request.getParameter("command");
       	
      session.setAttribute("flightdata",sCommand); 

%>
			
           

        </div>

    </div>
    

</form>
</body>
</html>
