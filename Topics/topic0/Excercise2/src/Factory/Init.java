package Factory;

import Concrete.Connection;

public class Init {

	public static void main(String[] args) {
	
		
AbbstractFactory sw= FactoryPoducer.getConnection();
Connection cnn= sw.getConnection("Oracle");
cnn.connect();



	}

}
