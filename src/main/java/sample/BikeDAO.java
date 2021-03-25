package sample;
 
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  

public class BikeDAO {  
  
		public static Connection getConnection(){  
		    Connection con=null;  
		    try{  
		        Class.forName("com.mysql.cj.jdbc.Driver");  
		        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testdatabase","root","root");  
		        System.out.println("Connection Made Successfully");
		    }catch(Exception e){System.out.println(e);}  
		    return con;  
		}  
		
		public static int save(Bike u){  
		    int status=0;  
		    try{  		    	
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("insert into bike values(?,?,?,?)");  
		        ps.setInt(1,u.getCode());  
		        ps.setString(2,u.getModel());  
		        ps.setInt(3,u.getYear());  
		        ps.setInt(4,u.getPrice());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  
		
		public static int update(Bike u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("update bike set model=?, year=?, price=? where code=?");   
		        ps.setString(1,u.getModel());  
		        ps.setInt(2,u.getYear());  
		        ps.setInt(3,u.getPrice());  
		        ps.setInt(4,u.getCode()); 
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  
		
		public static int delete(Bike u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("delete from bike where code=?");  
		        ps.setInt(1,u.getCode());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		  
		    return status;  
		}   
		
		public static Bike getRecordById(int code){  
		    Bike u=null;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("select * from bike where code=?");  
		        ps.setInt(1,code);  
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            u=new Bike();  
			        u.setModel(rs.getString("model"));  
			        u.setYear(rs.getInt("year"));  
			        u.setPrice(rs.getInt("price"));  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return u;  
		}  
} 
