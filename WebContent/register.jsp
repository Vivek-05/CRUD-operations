<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP</title>
</head>
<body>
	<form action="LoginRegister" method="get">
		<center>
			<h1>Welcome In Registration Page...</h1>
			<table>

				<tr>
					<td><font size="5">User Name :</font></td>
					<td><input type="text" name="username"></td>
				</tr>

				<tr>
					<td><font size="5">Email ID :</font></td>
					<td><input type="text" name="emailid"></td>
				</tr>
				<tr>
					<td><font size="5">Mob :</font></td>
					<td><input type="text" name="mob"></td>
				</tr>

				<tr>
					<td><font size="5">Date Of Birth :</font></td>
					<td><input type="text" name="dob"></td>
				</tr>

				<tr>
					<td><font size="5">Gender :</font></td>
					<td><input type="radio" name="gender" value="Male">
						Male</td>
					<td><input type="radio" name="gender" value="Female">
						Female</td>
				</tr>

				<tr>
					<td><font size="5">Password :</font></td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="submit" value="register"></td>

				</tr>

			</table>
		</center>
	</form>
</body>
</html>