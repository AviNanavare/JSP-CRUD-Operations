<%@page import="sample.BikeDAO"%>  
<jsp:useBean id="u" class="sample.Bike"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
		<%  
// 			u.setCode(Integer.parseInt(request.getParameter("code")));
// 			u.setModel(request.getParameter("model"));
// 			u.setYear(Integer.parseInt(request.getParameter("year")));
// 			u.setPrice(Integer.parseInt(request.getParameter("price")));

		
			int i = BikeDAO.save(u);  
			if(i>0){  
					response.sendRedirect("Bike-success.jsp");  
			}else{  
					response.sendRedirect("Bike-error.jsp");  
			}  
		%> 
</body>
</html> 
  
		