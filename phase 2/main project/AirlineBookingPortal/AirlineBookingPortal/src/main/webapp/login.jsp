<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Rubik:400,700'><link rel="stylesheet" href="Styles/loginp.css">
</head>
<body>

<div class="login-form">
  <form action="AdminControllerServlet" method="POST">
    <h1>FlyAway</h1>
    <div class="content">
      <div class="input-field">
        <input type="email" placeholder="Email" autocomplete="nope" name="email" required>
      </div>
      <div class="input-field">
        <input type="password" placeholder="Password" name="password" required>
      </div>
      
    </div>
    <div class="action">
      
      <button type="submit">Sign in</button>
    </div>
  </form>
</div>
<!-- partial -->
  <script  src="Styles/loginp.js"></script>


</body>
</html>