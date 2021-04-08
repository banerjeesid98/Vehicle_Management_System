<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Vehicle Details</title>
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
         <!--<h1><center><u>Edit Vehicle Details</u></center></h1>-->  
         <%@include file="Banner.jsp" %>
         <center>
         
         <br><br><br>
           <form:form method="POST" action="/editsave">    
            <table >    
              <tr>    
              <td><b>Vehicle ID : </b></td>   
              <td><form:input path="vehicleId"  /></td>  
             </tr> 
             <tr>    
              <td><b>Vehicle Name : </b></td>   
              <td><form:input path="vehicleName"  /></td>  
             </tr>    
             <tr>    
              <td><b>Vehicle Type :</b></td>    
              <td><form:input path="vehicleType" /></td>  
             </tr>   
             <tr>    
              <td><b>Cost :</b></td>    
              <td><form:input path="cost" /></td>  
             </tr> 
             <tr>    
              <td><b>Rating :</b></td>    
              <td><form:input path="rating" /></td>  
             </tr>   
               <tr>    
              <td><b>Quantity Available :</b></td>    
              <td><form:input path="qtyAvailable" /></td>  
             </tr>
             <tr>    
              <td> </td>    
              <td><input type="submit" value="Save" class="button"/></td>    
             </tr>    
            </table>    
           </form:form>
           </center> 
</body>
</html>
