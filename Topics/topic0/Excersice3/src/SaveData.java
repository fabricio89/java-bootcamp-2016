import java.util.ArrayList;

public class SaveData implements ISave {
	
	public void save (ArrayList savedata){
		
		if (ConnectionManager.connected()){
			new RemoteObject().save(savedata);
		}
		
		else{
			
			new SaveInHd().save(savedata);
		}
	}

}
