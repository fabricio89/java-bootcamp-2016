package Concrete;

public class MysqlConnection implements Connection{

	@Override
	public void connect() {
		
		
		System.out.print("you're connected to Mysql");
		
	}

}
