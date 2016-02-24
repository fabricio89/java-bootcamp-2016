package Db;

public abstract class ConnectionBuilder {
	
	protected ConnectionDb connectionDb;
	
	public ConnectionDb getConnection(){
		return connectionDb;
	}
	
	public void createConnection(){
		connectionDb= new ConnectionDb();
	}
	
		 abstract void  buildName();
		 abstract void  buildUser();
		 abstract void  buildPass();
		 abstract void  buildLocation();
		 
		
	

}
