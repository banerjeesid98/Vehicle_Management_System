
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Vehicle Details</title>
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
	#table1 {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 70%;
     margin-top:130px;
     margin-left:150px;
     width: 80%;
}

#table1 td, #table1 th {
  border: 1px solid #ddd;
  padding: 8px;
  font-size: 20px;
  font-family: "Comic Sans MS", cursive, sans-serif;
}

#table1 tr:nth-child(even){background-color: #f2f2f2;}

#table1 tr:hover {background-color: #ddd;}

#table1 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
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


</style>
</head>
<body>
 
 
<%@include file="Banner.jsp" %>
 
<center>
<table id="table1">  
<tr><th>Vehicle ID</th><th>Vehicle Name</th><th>Vehicle Type</th><th>Cost</th><th>Rating</th><th>Quantity Available</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="s" items="${list}"> 
  
   <tr>  
   <td><b><I>${s.vehicleId}</I></b></td>  
   <td><I>${s.vehicleName}</I></td>  
   <td>${s.vehicleType}</td>  
   <td>${s.cost}</td> 
   <td><b>${s.rating}</b></td>
   <td><b>${s.qtyAvailable}</b></td> 

   <td><a href="edit/${s.vehicleId}" class="clickme warning">Edit</a></td>  
   <td><a href="delete/${s.vehicleId}" class="clickme danger">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>
   <br><br><br>
	<td><a href="addnewbyadmin" class="clickme default">Add New Vehicles Details</a></td>
	<br><br><br>
   <td><a href="bookingview" class="clickme default">View Booking Details</a></td>
   <br><br><br>
   <td><a href="logout" class="clickme danger">Sign Out</a></td>
</center>  

</body>
</html>
