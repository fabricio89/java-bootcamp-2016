package Factory;

public class FactoryPoducer {
	
	public static AbbstractFactory getConnection(){
		
		return new ConnectionFactory();	
		
	}

}
