package Concrete;

public class OracleConnection implements Connection{

	@Override
	public void connect() {
		
		System.out.println("You're connected to OracleDB");
		
	}
	
	

}
