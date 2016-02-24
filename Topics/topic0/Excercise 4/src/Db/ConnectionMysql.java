package Db;

public class ConnectionMysql extends ConnectionBuilder{

	
	public void buildName() {
	  connectionDb.setName("Mysql");
		
	}

	public void buildUser() {
		connectionDb.setUser("root");
		
	}

	
	public void buildPass() {
		connectionDb.setPass("123");
		
	}

	
	public void buildLocation() {
		connectionDb.setLocation("localhost/");
		
	}

}
