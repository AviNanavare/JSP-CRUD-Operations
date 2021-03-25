<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
		<h1>Add New User</h1>  
		<form action="insert.jsp" method="post">  
				<table>  
				<tr><td>Code:</td><td><input type="text" name="code"/></td></tr>  
				<tr><td>Model:</td><td><input type="text" name="model"/></td></tr>  
				<tr><td>Year:</td><td><input type="text" name="year"/></td></tr>
				<tr><td>Price:</td><td><input type="text" name="price"/></td></tr> 
				<tr><td><input type="submit" value="Add User"/></td></tr>  
				</table>  
		</form>  
</body>
</html>