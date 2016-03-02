package com.Topic2.tdd;

import java.util.ArrayList;

public class RecentFileList {
	
	private  ArrayList <String> RecentFiles;


	public ArrayList<String> getRecentFiles() {
		return RecentFiles;
	}


	public void setRecentFiles(ArrayList<String> recentFiles) {
		RecentFiles = recentFiles;
	}


	public String updateList(ArrayList<String> files) {
		
		if (files.size()==11) {
			
			files.remove(10);
			RecentFiles=files;
		}
		return "The last element has been removed";
		
	}


	public void addItem(String item, ArrayList<String> lista) {
		
		
		ArrayList<String>aux=lista;
		aux.add(0, item);
		RecentFiles=aux;
		updateList(RecentFiles);
				
	}
	public void duplicateCheck(String item, ArrayList<String> list){
		
		String repe;
		addItem(item, list);

		for (int i=0 ; i<list.size();i++){
			
				if (i>0 && RecentFiles.get(i)==item){
					repe=list.get(i);
					list.remove(i);
					RecentFiles=list;
				}			
		}
	}


	public void clearList(ArrayList<String> files) {
		files.clear();
		RecentFiles=files;
		
	}
	
	}