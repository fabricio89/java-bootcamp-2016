package com.Topic2.tdd;

import java.util.ArrayList;
import java.util.Arrays;
import org.junit.Test;
import junit.*;
import junit.framework.TestCase;



public class AppTest extends TestCase {
	

@Test
	
	public void testWhenFileListIsFullThenRemoveTheLastItem() {
        
	
		RecentFileList rfl= new RecentFileList ();
    	ArrayList<String> files = new ArrayList<String>(
        Arrays.asList("File1", "File2", "File3", "File4", 
        "File5", "File6", "File7", "File8", "File9", "File10", "File11"));
       	String result= rfl.updateList(files);	
		assertEquals("The last element has been removed", result);
	}
	

@Test
	public void testAddNewItemToTheList(){
		RecentFileList rfl= new RecentFileList ();
		ArrayList<String> files = new ArrayList<String>(
		Arrays.asList("File1", "File2", "File3", "File4", 
		        "File5"));
		rfl.addItem("NewFile", files);
	   
		
		assertTrue(6==rfl.getRecentFiles().size());
		
	}

@Test

	public void testWhenAItemAlreadyExist(){
	ArrayList<String> files = new ArrayList<String>(
	        Arrays.asList("File2", "File1", "File3"));
	
	ArrayList<String> files2 = new ArrayList<String>(
	        Arrays.asList("File1", "File2", "File3"));
	
RecentFileList p= new RecentFileList();
p.duplicateCheck("File2",files);

assertEquals(files, p.getRecentFiles());

}

@Test

public void testWhentheProgramRunForTheFirstTimeIsEmpty(){
	ArrayList<String> files = new ArrayList<String>(
	Arrays.asList("File2", "File1", "File3"));
	RecentFileList p= new RecentFileList();
	p.clearList(files);
	
	assertEquals(0, p.getRecentFiles().size());
	
}
}
	
	
	
	


