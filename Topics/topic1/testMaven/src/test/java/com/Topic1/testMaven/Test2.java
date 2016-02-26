package com.Topic1.testMaven;

import junit.framework.TestCase;

//test error

public class Test2 extends TestCase {
	
	MyApp ma= new MyApp();
	String result = ma.concat("Marco", "Polo");
	
	
    public void testApp()
    {
        assertEquals("Test", result);
    }

}
