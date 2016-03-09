package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

public class Conexion {
	
	private static Conexion conex=null;
	private static Connection conn;
	
	  
   
    
    
	
	private Conexion() throws SQLException{
		
	
        
		
		try {
			Class.forName("com.mysql.jdbc.Connection");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/School","root","123");
			
			if (conn !=null){
				System.out.println("Connection ok");
			}
					}
					catch (SQLException ex){
						System.out.println("error");
					}
					catch(ClassNotFoundException ex){
						System.out.print(ex);
					}
		
		
		
	}
	
	
	public void obtainQuery() throws SQLException{
		
		try {
			
			String fisrt_name= "sergio";
			String last_name= "castro";

String sql1= "SELECT concat(t.last_name,' ', t.first_name) Teacher, sh.day ,concat "
		+ "(Date_format(sh.start,'%H:%i'),' - ',Date_format(sh.end,'%H:%i')) "
		+ "Shedule,c.name Course from teacher t, course c, shedule_course sc, shedule "
		+ "sh where t.id_teacher=c.id_teacher and  c.id_course=sc.id_course and "
		+ "sc.id_shedule=sh.id_shedule and t.last_name=@teacherlastname and "
		+ "t.first_name=@teacherfirstname";

		

PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql1);
ResultSet rs = ps.executeQuery();

//String name= rs.getString(0);


int columns = rs.getMetaData().getColumnCount();

StringBuilder message = new StringBuilder();


while (rs.next()) {
	
    for (int i = 1; i <= columns; i++) {
       message.append(rs.getString(i) + " ");
    	
    }
    message.append("\n");
}

System.out.println(message);
	
	}
		
	catch (SQLException ex){
		System.out.println(" failed");
	}
	}
	
	
	
	public synchronized static Conexion getInstance() throws SQLException {
		if (conex==null){
			conex= new Conexion();
		}
		return conex;
	}
	
	
	
	
}
