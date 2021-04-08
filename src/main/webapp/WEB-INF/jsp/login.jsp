<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="login">

		<img src="../resources/images/h.jpg" width=70% height=80%>
		<div class="centered">

			<table class="flamenco">
				<caption>Enter Credentials</caption>


				<tr>
					<td>E-mail:</td>
					<td><input type="text" placeholder="Enter email" name="email"
					id="mail" required /></td>
				</tr>

				<tr>
					<td>Password:</td>
					<td><input type="password" placeholder="Enter password"
						name="password"  required /></td>
				</tr>


				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /></td>
				</tr>


				<tr>
					<td><p>
							Do not have an account? <a href="registration">Register here</a>.
						</p></td>
				</tr>
			</table>


		</div>
	</form>




</body>
</html>