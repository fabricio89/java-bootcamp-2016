package com.API.shoppingCart;


/**
*@author: Fabian Puentes
*@version: 03/03/2016/
*
*/
public class ServiceLocal {
	
	
/**
 * 	
 * @return instance of ShoppingCart
 */
	public static ServiceShoppingCar getService(){
		return new ShoppingCart();
	}

}
