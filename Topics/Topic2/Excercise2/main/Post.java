package com.Blog.excercise2;

public class Post {
	
	private int id;
	private String name;
	private String content;
	
	public Post(){
		
	}
	
	public Post(int id, String name, String content){
		
		this.id= id;
		this.name= name;
		this.content= content;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	private String Date;

}
