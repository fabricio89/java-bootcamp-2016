package Factory;

import Concrete.*;

public abstract class AbbstractFactory {
	
	abstract Connection getConnection(String name);

}
