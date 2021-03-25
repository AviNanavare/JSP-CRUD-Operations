<%@page import="sample.BikeDAO"%>  
<jsp:useBean id="u" class="sample.Bike"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<html>
	<head>
		<title></title>
	</head>
	<body>
		<%  
			BikeDAO.delete(u);  
			response.sendRedirect("index.jsp");  
		%> 
	</body>
</html> 