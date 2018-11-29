<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello</title>
</head>

<script type="text/javascript" src="js/jquery-3.3.0.min.js"></script>

<script type="text/javascript" src="js/LoadPage.js"></script>

<script type="text/javascript" src="js/AddPage.js"></script>
	


<body>
	<div id="div"></div>
	<table id="table1">
		<form method="get" action="AddUser" id="form">
			<tr id="row">
				<td>Name <input type="text" name="username" id="id1"></td>
				<td>Email Id <input type="text" name="emailid" id="id2"></td>
				<td>Mobile <input type="text" name="mob" id="id3"></td>
				<td>Date Of Birth <input type="text" name="dob" id="id4"></td>
				<td>Gender <input type="radio" name="gender" value="Male" id="id5">MALE</td>
				<td><input type="radio" name="gender" value="Female" id="id5">
						Female</td>
				<td>Password <input type="password" name="password" id="id6"></td>
				<td><button id="bt" onclick="addrow();">Add</button></td>
			<tr>
		</form>
	</table>
	<center>

		<table id="table" border="1" cellpadding="5" style="width: 100%">

			<br>

			<caption>User's List</caption>
			<tr>
				<th>CheckBox</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Date Of Birth</th>
				<th>Gender</th>
				<th>Delete</th>
			</tr>

			<c:forEach var="u" items="${User}">
				<form method="get" action="DeleteByName">

					<tr id="${u.username}" class="row">

						<td><input type="checkbox" value="${u.username}"></td>
						<td><c:out value="${u.username}" /></td>
						<td><c:out value="${u.emailid}" /></td>
						<td><c:out value="${u.mob}" /></td>
						<td><c:out value="${u.dob}" /></td>
						<td><c:out value="${u.gender}" /></td>
						<td><button type="button" onclick="reload('${u.username}');">Delete</button></td>


					</tr>
				</form>
			</c:forEach>
		</table>
	</center>
</body>
</html>