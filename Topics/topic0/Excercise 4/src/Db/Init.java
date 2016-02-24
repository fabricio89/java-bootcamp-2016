package Db;

public class Init {
	
	

	public static void main(String[] args){
		MakeConnection mk= new MakeConnection();
		ConnectionBuilder connMysql= new ConnectionMysql();
		
		mk.setConnectionBuilder(connMysql);
		mk.generateConnection();
		
		ConnectionDb cd= mk.getConnection();

		
	}

}
