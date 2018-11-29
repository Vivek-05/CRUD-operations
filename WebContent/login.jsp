<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<form action="LoginRegister" method="post">
	
		<center>
			<table>
				<tr>
					<td><h1>${message}</h1>
						<h5>${message1}</h5></td>
					<td></td>
				</tr>
				<tr>
					<td>User Name :</td>
					<td><input type="text" name="username" id="name"></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" name="submit" value="login"></td>
					<td><a href="register.jsp"> New User !!!</a></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>




/*<table>
<tr>
<td><div id="res" style="width:500px;height:700px;margin-top:20px;margin-bottom:10px;"></div></td>
</tr>
<tr>
<td><div id="res1" style="width:500px;height:700px;margin-top:20px;margin-bottom:10px;"></div></td>
</tr>
</table>