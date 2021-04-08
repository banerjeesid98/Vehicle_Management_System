<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error!</title>
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
		h1{
	font-size: 35px;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
}

.clickme {
    background-color: #EEEEEE;
    padding: 8px 20px;
    text-decoration:none;
    font-weight:bold;
    border-radius:5px;
    cursor:pointer;
}

.danger {
    background-color:#FF0040;
    color: #FFFFFF;
}

.danger:hover {
    background-color:#EB003B;
    color: #FFFFFF;
}

.success {
    background-color:#00EB89;
    color: #FFFFFF;
}

.success:hover {
    background-color:#00D77E;
    color: #FFFFFF;
}

.warning {
    background-color:#FFA500;
    color: #FFFFFF;
}

.warning:hover {
    background-color:#EB9800;
    color: #FFFFFF;
}

.info {
    background-color:#00D4FF;
    color: #FFFFFF;
}

.info:hover {
    background-color:#00C4EB;
    color: #FFFFFF;
}

.default {
    background-color:#D1D6DC;
    color: #000000;
}

.default:hover {
    background-color:#DCE0E5;
    color: #555555;
}

h1{
font-family: Lucida, sans-serif;
}
h1.double {border-style: double;}
</style>
</head>
<body>
<center>
	<h1 class="double">Sorry! Invalid username or password.</h1>
	<form>
 <input type="button" class="clickme default" value="Try Again" onclick="history.back()">
 <br>
 <a href="/">Home</a>
</form>
	</center>
</body>
</html>