package com.API.shoppingCart;


/**
*@author: Fabian Puentes
*@version: 03/03/2016/
*
* 
*/

public class Product {
	
	private int Id;
	private String Name;
	private double price;

	
	public Product(){
		
	}
	
public Product(int id, String name, double price){
	this.Id=id;
	this.Name=name;
	this.price=price;
		
	}
	
	
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	

}
