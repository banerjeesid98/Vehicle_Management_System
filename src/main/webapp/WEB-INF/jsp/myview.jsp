<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<table align="center" >



		<c:forEach items="${list}" var="c">
			<tr>
				<td>${c.vehicleId}</td>
				<td>${c.vehicleName}</td>
				<td><a href="book?vehicleid=${c.vehicleId}">Booking  </a>  </td>
				
			

			</tr>
		</c:forEach>
	</table>


</body>
</html>