package Conexion;

import java.sql.SQLException;

public class init {

	public static void main(String[] args) throws SQLException{
		
		Conexion.getInstance().obtainQuery();
	
	}

}
