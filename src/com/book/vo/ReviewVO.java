package com.book.vo;

public class ReviewVO {
	private int id;
	private int grade;
	private String comment;
	
	
	public ReviewVO() {
		
	}
	public ReviewVO(int id, int grade, String comment) {
		this.id = id;
		this.grade = grade;
		this.comment = comment;
		
	}
	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}
