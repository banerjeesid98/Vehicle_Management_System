<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login!</title>
</head>
<style>
	a.disabled {
	  pointer-events: none;
	  cursor: default;
	}
	body{
		background-image: url("../images/car5.jpeg");
		background-repeat: no-repeat;
		background-size: cover;
		}
		
		input[type=text] {
  width: 10%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: #3CBC8D;
  color: white;
}

	input[type=password] {
  width: 10%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: #3CBC8D;
  color: white;
}

h1{
	font-size:50px;
	margin-left:50px;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
}
h1.solid {border-style: solid;}

b{
	font-size: 25px;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
}

.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  margin-left:100px;
}

.button2 {background-color: #008CBA;}
</style>
<body>
	<center>
		<h1 class="solid">Sign In!</h1>
		<form action="logincheck" method="post" >
			<br><b>Username:               </b><input type="text" name="email"> <br><br>
			<b>Password:                   </b><input
				type="password" name="password"> <br><br><br>
			<input type="submit" class="button button2" value="Submit">
		</form>
	</center>
</body>
</html>