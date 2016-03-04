package com.API.shoppingCart;

import java.util.ArrayList;

/**
*@author: Fabian Puentes
*@version: 03/03/2016/
*Concrete class that implements the methods from interface ServiceShoppingCar
*/
public class ShoppingCart implements ServiceShoppingCar{
	

	/**
	 * List of Products	
	 */
	ArrayList <Product> List;
	
	/**
	 * Total price 
	 */
	private double Total;
	
	/**
	 * Number of item in the shopping car
	 */
	private int items;

	
	/**
	 * class constructor initializes the List, and reset to zero
	 * the total and items
	 */
	
	public ShoppingCart(){
		List = new ArrayList<Product>();
		Total =0;
		items=0;
	}
	
	/**
	 * Allows empty the shopping car
	 */

	public void clear() {
		
		getList().clear();
		Total=0;
		items=0;
		
	}
	
	/**
	 * Calculate the total price of the shopping car
	 */

	public void CalculateTotal() {
	  
	   
	for(int i=0; i< List.size();i++){
		Total+=List.get(i).getPrice();
			
		}		
	}
	
	/**
	 * Method that add product to the shopping car
	 * @param product object that is added to the shopping car
	 */

	public void addProduct(Product product) {
		
		items++;
		List.add(product);
		
	}
	
	/**
	 * Method that recives an Id and then, remove the selected product 
	 * @param id Identificator from a product, allows for the object to be remove 
	 */

	public void removeProduct(int id) {
	
		
		for(int i=0;i< List.size();i++){
			if (List.get(i).getId()==id){
				List.remove(i);
				items--;
			}
		}
		
	}
	
	/**
	 * Metods getters and setters
	 * 
	 */

	public double getTotal() {
		
		return Total;
	}
	
	public ArrayList<Product> getList() {
		return List;
	}

	public void setList(ArrayList<Product> list) {
		List = list;
	}
	
	public int getItems() {
		return items;
	}

	public void setItems(int items) {
		this.items = items;
	}
	
	 

}
