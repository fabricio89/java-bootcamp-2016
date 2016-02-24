package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	
	private static Conexion conex=null;
	private static Connection conn;
	
	
	
    private static int CLASS_INSTANCES_COUNT = 0;
    
   
    private int objectInstancesCount = 0;
    
	
	private Conexion(){
		
		Conexion.increaseClassInstances();
        objectInstancesCount += 1;
		
		try {
			Class.forName("com.mysql.jdbc.Connection");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/empresa","root","123");
			
			if (conn !=null){
				System.out.println("Conexion ok");
			}
					}
					catch (SQLException ex){
						System.out.println("Conexion fallida");
					}
					catch(ClassNotFoundException ex){
						System.out.print(ex);
					}
		
	}

	public synchronized static Conexion getInstance(){
		if (conex==null){
			conex= new Conexion();
		}
		return conex;
	}
	
	
	public static void increaseClassInstances(){
        Conexion.CLASS_INSTANCES_COUNT += 1;
    }
    
    public static int getClassInstancesCount(){
        
        return Conexion.CLASS_INSTANCES_COUNT;
    }
    
    public int getObjectInstancesCount(){
        
        return this.objectInstancesCount;
    }
	
}
