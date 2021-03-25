<%@page import="sample.BikeDAO"%>  
<jsp:useBean id="u" class="sample.Bike"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<html>
	<body>
		<%  
			int i=BikeDAO.update(u);  
			response.sendRedirect("index.jsp");  
		%>
	</body>
</html>  