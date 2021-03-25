<%@page import="com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<%
			try{	
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection
				("jdbc:mysql://localhost:3306/testdatabase","root","root");
				PreparedStatement st = con.prepareStatement
						("select * from bike");
// 				Statement st = con.createStatement();
// 				out.print("Connection made successfully");
				ResultSet rs = st.executeQuery
						("Select * from Bike");
				%>
				<table border="1px solid black" style="border-collapse: collapse; width: 70%; text-align: center; font-size: 20px;">
				<tr><th>Code</th><th>Model</th>
				<th>Year</th><th>Price</th>
				<%while(rs.next())
				{%><tr>
					<td><%=rs.getInt(1) %></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getInt(3) %></td>
					<td><%=rs.getInt(4) %></td>
					</tr>
				<%}
			}catch(Exception e)
			{	e.printStackTrace();	}
		%>
		</table>

</body>
</html>