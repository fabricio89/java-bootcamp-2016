package com.API.shoppingCart;

import java.util.ArrayList;

/**
*@author: Fabian Puentes
*@version: 03/03/2016/
*Interface that contains the necessary methods for
*the shopping car 
*/

public interface ServiceShoppingCar {
	
	public void clear();
	public void CalculateTotal();
	public void addProduct(Product p);
	public void removeProduct(int id);
	
	
	
	


}
