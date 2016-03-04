package com.API.shoppingCart;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;
import static org.junit.Assert.*;


public class TestService {
	
@Test
	
	public void WhenTheListIsVoid(){
	ShoppingCart sc= new ShoppingCart();
	assertTrue(sc.getList().isEmpty());			
	}
	
	
	@Test
	public void CalculateTotal(){
		ShoppingCart sp= new ShoppingCart();
		Product p1= new Product(1,"Soap", 2000);
		Product p2= new Product(2,"Shampoo", 6000);
		
		sp.addProduct(p1);
		sp.addProduct(p2);
		sp.CalculateTotal();
		
		assertEquals(8000.0, sp.getTotal());
		
	}
	@Test
	
	public void addProductTest(){
		
		ShoppingCart sp= new ShoppingCart();
		Product p1= new Product(1,"Soap", 2000);
		sp.addProduct(p1);
		assertEquals(1, sp.getList().get(0).getId());
	}
	@Test
	public void removeProductTest(){
		ShoppingCart sp= new ShoppingCart();
		Product p1= new Product(1,"Soap", 2000);
		sp.addProduct(p1);
		int a = sp.getList().size();
		sp.removeProduct(1);
		int b= sp.getList().size();
		
		assertTrue(a==(b-1));
	}
	
}
