<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="sample.BikeDAO, sample.Bike"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<%  
		int code = Integer.parseInt(request.getParameter("code"));  
		Bike u = BikeDAO.getRecordById(code);  
		%> 
		
		<h1>Update Form</h1>  
		<form action="update.jsp" method="post">  
				<table>  
					<tr><td>Code :</td><td><input type="number" name="code"  value="<%out.print(code); %>" readonly="readonly"/></td></tr> 
					<tr><td>Model:</td><td><input type="text" name="model"/></td></tr>  
					<tr><td>Year:</td><td><input type="text" name="year"/></td></tr>
					<tr><td>Price:</td><td><input type="text" name="price"/></td></tr> 
					<tr><td><input type="submit" value="UpdateData"/></td></tr>  
				</table>  
		</form>  
</body>
</html>