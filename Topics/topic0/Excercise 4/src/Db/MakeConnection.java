package Db;

public class MakeConnection {
	
	private ConnectionBuilder connBuilder;
	
	public void setConnectionBuilder(ConnectionBuilder CoB){
		connBuilder= CoB;
	}
	
	
	public ConnectionDb getConnection(){
		return connBuilder.getConnection();
	}
	
	public void generateConnection(){
		
		connBuilder.createConnection();
		connBuilder.buildName();
		connBuilder.buildUser();
		connBuilder.buildPass();
		connBuilder.buildLocation();
		
	}
	
	
	

}
