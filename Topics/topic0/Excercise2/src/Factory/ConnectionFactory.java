package Factory;

import Concrete.*;

public class ConnectionFactory extends AbbstractFactory {

	public Connection getConnection(String name) {
		
		if (name == null){
		
		
		return null;
	}

	if (name.equalsIgnoreCase("Mysql")){
		return new MysqlConnection();
	}
	
	else if (name.equalsIgnoreCase("Oracle")){
		return new OracleConnection();
	}
	
	else if (name.equalsIgnoreCase("PostgreSql")){
		return new PostgreSqlConnection();
	}
	return null;
	
}
}