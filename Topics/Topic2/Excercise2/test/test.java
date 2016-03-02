package com.Blog.excercise2;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;



public class test  extends TestCase {

	

	
	public void testCreateNewPost(){
		Blog b =new Blog();				
		assertEquals("created post", b.createPost(1, "ghs", "jkhs"));
	}
	
	public void testDeleteExistingPost(){
		Blog b = new Blog();
		b.createPost(20, "ghs", "jkhs");
		
		assertEquals("post removed", b.removePost(20));
	}
	
	public void testShowTenLastEntries(){
		Blog b=new Blog();
		assertEquals("the ten last Post", b.tenLast());
	}
	
}

