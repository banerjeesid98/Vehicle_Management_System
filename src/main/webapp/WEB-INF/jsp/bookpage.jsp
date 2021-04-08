<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking!</title>
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
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: #3CBC8D;
  color: white;
}

b{
	font-size: 25px;
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
}

.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body>
            <%@include file="Banner.jsp" %>  
<center>

           <form:form method="post" action="booknow">  
           <br><br><br><br>  
            <table >  
  		 	 <tr>    
              <td><b>Customer Name : </b></td>   
              <td><form:input path="custName" placeholder="Enter Customer's Name!"/></td>  
             </tr>
             <tr>    
              <td><b>Address : </b></td>   
              <td><form:input path="address" placeholder="Enter Customer's Address"/></td>  
             </tr>    
             <tr>    
              <td><b>Email ID :</b></td>    
              <td><form:input path="emailId" placeholder="Enter Customer's Email ID"/></td>  
             </tr>   
             <tr>    
              <td><b>Phone No:</b></td>    
              <td><form:input path="phoneNo" placeholder="Enter Customer's Phone Number" /></td>  
             </tr>   
             <tr>    
              <td> </td>    
              <td><input type="submit" class="button" value="Book Now" /></td>    
             </tr>    
            </table>    
           </form:form>    
           </center>
</body>
</html>