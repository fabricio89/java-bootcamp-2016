
public class ConnectionManager {
	
	private static boolean connected;
	
	public ConnectionManager(){
		connected =false;
	}
	
	public static void connect(){
		connected= true;
	}
	
	public static void disconnect(){
		connected = false;
	}
	
	

	public static boolean connected() {
		// TODO Auto-generated method stub
		return connected;
	}

}
