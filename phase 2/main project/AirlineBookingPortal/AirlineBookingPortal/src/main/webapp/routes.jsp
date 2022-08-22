<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Route</title>
<link rel="stylesheet" href="Styles/routes.css">
</head>
<body>

<div class="containerR" align="center">
		<h4 >Welcome to FlyAway (An Airline Booking Portal).</h4>
		
		 <form action="AvailableFlights" method="POST" align = "center">  
        <div class="containerRo">   
        
        	
        	<label for="source">From :</label>

			<select name="from" id="source" style="width: 350px;">
  				<option value="Delhi">Delhi</option>
  				<option value="Jaipur">Jaipur</option>
  				<option value="Mumbai">Mumbai</option>
  	
  				<option value="Pune">Pune</option>
			</select>  
			
			<br>
			<br>
			
			<label for="destination">To :  </label>

			<select name="to" id="destination" style="width: 350px;">
  				<option value="Delhi">Delhi</option>
  				<option value="Jaipur">Jaipur</option>
  				<option value="Mumbai">Mumbai</option>
  				
  				<option value="Pune">Pune</option>
			</select> 
			
			<br>
			<br>
			
			<label for="date">Date : </label>
			<input type="date" id="birthday" name="datee">
			
			<br>
			<br>
			
			<button id="btn" type="submit" style="width: 200px;">Submit</button>
			
             
        </div>   
    </form>     
	</div>
</body>
</html>