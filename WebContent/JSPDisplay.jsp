<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
</head>
<body>

<center>

		<table id="table" border="1" cellpadding="5" style="width:100%">

			<caption>User's List</caption>
			<tr>
				
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Date Of Birth</th>
				<th>Gender</th>
				
			</tr>

			<%-- <c:forEach var="u" items="${sessionScope.User}"> --%>
			
			     <c:forEach var="u" items="${applicationScope.User}">
				                   
					<tr>
						<td><c:out value="${u.username}" /></td>
						<td><c:out value="${u.emailid}" /></td>
						<td><c:out value="${u.mob}" /></td>
						<td><c:out value="${u.dob}" /></td>
						<td><c:out value="${u.gender}" /></td>
					</tr>
				
			</c:forEach>
		</table>
	</center>
</body>
</html>