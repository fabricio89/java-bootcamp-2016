package com.Blog.excercise2;

import java.util.ArrayList;





public class Blog {
	
	private static String name= "Fabian's Blog";
	private static ArrayList<Post> Allpost= new ArrayList<Post>();
	private static ArrayList<String> TenLastPost= new ArrayList<String>();
	
	
	
	public static ArrayList<Post> getAllpost() {
		return Allpost;
	}


	public static void setAllpost(ArrayList<Post> allpost) {
		Allpost = allpost;
	}
	
	public static ArrayList<String> getTenLastPost() {
		return TenLastPost;
	}


	public static void setTenLastPost(ArrayList<String> tenLastPost) {
		TenLastPost = tenLastPost;
	}


	public String createPost(int i, String name, String content) {
	
		Post p=new Post(i, name, content);
		Allpost.add(p);
		
		return "created post";
	}


	public String removePost(int Id) {
	Post p =new Post();
		
		for(int i=0; i<Allpost.size();i++){
			p=Allpost.get(i);
			int id= p.getId();
			
			if(Id==id){
				Allpost.remove(i);
			}
		
		}
		
		return "post removed";
	}
	
public String tenLast(){
		
		Post p= new Post();
		if (Allpost.size()>=10){
			for (int i=0;i<10;i++){
				p=Allpost.get(i);
				TenLastPost.add(p.getName());
				
			}
		}
		
		return "the ten last Post";
	}
		
	}
	
	
	
	


