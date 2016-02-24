package Concrete;

public class PostgreSqlConnection implements Connection {

	@Override
	public void connect() {
		System.out.println("You're connected to PostgreSql");
		
	}

}
