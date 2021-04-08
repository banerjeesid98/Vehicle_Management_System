<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Booking Details</title>
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
     margin-left:0%;
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
<body bgcolor="lightblue">
 
  
<%@include file="Banner.jsp" %>

<center>
<table id="table1">  
<tr><th>Booking ID</th><th>Customer Name</th><th>Address</th><th>Email ID</th><th>Phone No.</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="s" items="${list}"> 
  
   <tr>  
   <td><b><I>${s.bookingId}</I></b></td>  
   <td><I>${s.custName}</I></td>  
   <td>${s.address}</td>  
   <td>${s.emailId}</td> 
   <td><b>${s.phoneNo}</b></td>


   <td><a href="editbook/${s.bookingId}" class="clickme warning">Edit</a></td>  
   <td><a href="deletebook/${s.bookingId}" class="clickme danger">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>
   <br>
   <br>
   <a href="logout" class="clickme danger"><b>Sign Out</b></a>
   <br><br><br>
   <a href="/" class="clickme default"><b>Home</b></a>
</center>  
   <br>  
</body>
</html>
