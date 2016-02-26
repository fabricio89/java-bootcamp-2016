package com.Topic1.testMaven;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;


public class AppTest extends TestCase
{
	
	MyApp ma= new MyApp();
	int result = ma.sum(100, 200);
	
	
    public void testApp()
    {
        assertEquals(300, result);
    }
    
    
}
