<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
</head>
<body>
		<div style="width: 20%; float: left;">
			<form action="insert-page.jsp"><input type="submit" value="Add User" /></form>
			<br>
			<form action="update-page.jsp"><input type="submit" value="Update User" /></form>
			<br>
			<form action="delete-page.jsp"><input type="submit" value="Delete User" /></form>
		</div>
		
		<div align="center" style="width: 80% ; float: right ;" >
				<jsp:include page="view.jsp"></jsp:include>
		</div>
</body>
</html>